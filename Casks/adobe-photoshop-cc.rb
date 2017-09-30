cask 'adobe-photoshop-cc' do
  version '16'
  sha256 'c5a30a102299215b7df7e0cc519d3d63c20a63b0fecf54bc41eb68061c96dec7'

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

  url "http://trials3.adobe.com/AdobeProducts/PHSP/#{version}/osx10/Photoshop_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop CC'
  homepage 'https://www.adobe.com/products/photoshop.html'

  preflight do
    system_command "#{staged_path}/Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent',
                           "--deploymentFile=#{staged_path}/Adobe Photoshop CC 2015/Deployment/#{language}_Deployment.xml",
                         ],
                   sudo: true
  end

  uninstall_preflight do
    IO.write "#{staged_path}/uninstall.xml", <<-EOS.undent
      <?xml version="1.0" encoding="utf-8"?>
      <Deployment>
        <Properties>
          <Property name="removeUserPrefs">0</Property>
          <Property name="mediaSignature">{2614BC86-757D-4293-9E25-E4E16F370A9E}</Property>
        </Properties>
        <Payloads>
          <Payload adobeCode="{2614BC86-757D-4293-9E25-E4E16F370A9E}">
            <Action>remove</Action>
          </Payload>
        </Payloads>
      </Deployment>
    EOS

    system_command "#{staged_path}/Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent',
                           "--deploymentFile=#{staged_path}/uninstall.xml",
                         ],
                   sudo: true
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
