cask 'adobe-illustrator-cc' do
  version '19'
  sha256 'ca3e059b130e0b9a6c56ae55b89fa4d490650e25a9371072f43285c10c9821d2'

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

  url "http://trials3.adobe.com/AdobeProducts/ILST/#{version}/osx10-64/Illustrator_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Illustrator CC'
  homepage 'https://www.adobe.com/products/illustrator.html'

  preflight do
    deployment_xml = "#{staged_path}/Adobe Illustrator CC 2015/Deployment/deployment.xml"

    IO.write deployment_xml, IO.read(deployment_xml).sub(%r{>en_US<}, ">#{language}<")

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{deployment_xml}"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Illustrator\ CC\ 2015/Deployment/uninstall.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
