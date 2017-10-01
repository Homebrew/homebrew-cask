cask 'adobe-illustrator-cc' do
  version '19'
  sha256 'ca3e059b130e0b9a6c56ae55b89fa4d490650e25a9371072f43285c10c9821d2'

  language('cs')                { 'cs_CZ' }
  language('da')                { 'da_DK' }
  language('de')                { 'de_DE' }
  language('en-AE')             { 'en_AE' }
  language('en-GB')             { 'en_GB' }
  language('en-IL')             { 'en_IL' }
  language('en', default: true) { 'en_US' }
  language('es-MX')             { 'es_MX' }
  language('es')                { 'es_ES' }
  language('fi')                { 'fi_FI' }
  language('fr-CA')             { 'fr_CA' }
  language('fr-MA')             { 'fr_MA' }
  language('fr')                { 'fr_FR' }
  language('hu')                { 'hu_HU' }
  language('it')                { 'it_IT' }
  language('ja')                { 'ja_JP' }
  language('ko')                { 'ko_KR' }
  language('nb')                { 'nb_NO' }
  language('nl')                { 'nl_NL' }
  language('pl')                { 'pl_PL' }
  language('pt')                { 'pt_BR' }
  language('ru')                { 'ru_RU' }
  language('sv')                { 'sv_SE' }
  language('tr')                { 'tr_TR' }
  language('uk')                { 'uk_UA' }
  language('zh-TW')             { 'zh_TW' }
  language('zh')                { 'zh_CN' }

  url "http://trials3.adobe.com/AdobeProducts/ILST/#{version}/osx10-64/Illustrator_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Illustrator CC'
  homepage 'https://www.adobe.com/products/illustrator.html'

  preflight do
    deployment_xml = "#{staged_path}/Adobe Illustrator CC 2015/Deployment/deployment.xml"

    IO.write deployment_xml, IO.read(deployment_xml).sub(%r{>en_US<}, ">#{language}<")

    system_command "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent',
                           "--deploymentFile=#{deployment_xml}",
                         ],
                   sudo: true
  end

  uninstall_preflight do
    system_command "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent',
                           "--deploymentFile=#{staged_path}/Adobe Illustrator CC 2015/Deployment/uninstall.xml",
                         ],
                   sudo: true
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
