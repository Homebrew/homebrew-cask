cask 'adobe-indesign-cc' do
  version '11'
  sha256 '1387e8180cbe61ecff2146df25c2d71dd68fa59e8828928464d20db188b3cd52'

  language 'cs' do
    'cs_CZ'
  end

  language 'da' do
    'da_DK'
  end

  language 'de' do
    'de_DE'
  end

  language 'en-AE' do
    'en_AE'
  end

  language 'en-GB' do
    'en_GB'
  end

  language 'en-IL' do
    'en_IL'
  end

  language 'en' do
    'en_US'
  end

  language 'es-MX' do
    'es_MX'
  end

  language 'es' do
    'es_ES'
  end

  language 'fi' do
    'fi_FI'
  end

  language 'fr-CA' do
    'fr_CA'
  end

  language 'fr-MA' do
    'fr_MA'
  end

  language 'fr' do
    'fr_FR'
  end

  language 'hu' do
    'hu_HU'
  end

  language 'it' do
    'it_IT'
  end

  language 'ja' do
    'ja_JP'
  end

  language 'ko' do
    'ko_KR'
  end

  language 'nb' do
    'nb_NO'
  end

  language 'nl' do
    'nl_NL'
  end

  language 'pl' do
    'pl_PL'
  end

  language 'pt' do
    'pt_BR'
  end

  language 'ru' do
    'ru_RU'
  end

  language 'sv' do
    'sv_SE'
  end

  language 'tr' do
    'tr_TR'
  end

  language 'uk' do
    'uk_UA'
  end

  language 'zh-TW' do
    'zh_TW'
  end

  language 'zh' do
    'zh_CN'
  end

  url "http://trials3.adobe.com/AdobeProducts/IDSN/#{version}/osx10/InDesign_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe InDesign CC'
  homepage 'https://www.adobe.com/products/indesign.html'

  preflight do
    deployment_xml = "#{staged_path}/Adobe InDesign CC 2015/deploy/install.xml"

    IO.write(deployment_xml, IO.read(deployment_xml).sub(%r{>en_US<}, ">#{language}<"))

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{deployment_xml}"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ InDesign\ CC\ 2015/deploy/remove.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
