cask 'adobe-illustrator-cc' do
  version '19'
  sha256 'ca3e059b130e0b9a6c56ae55b89fa4d490650e25a9371072f43285c10c9821d2'

  url "http://trials3.adobe.com/AdobeProducts/ILST/#{version}/osx10-64/Illustrator_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Illustrator CC'
  homepage 'https://www.adobe.com/products/illustrator.html'
  license :commercial

  preflight do
    language = case MacOS.language
               when %r{^cs} then 'cs_CZ'
               when %r{^da} then 'da_DK'
               when %r{^de} then 'de_DE'
               when 'en-AE' then 'en_AE'
               when 'en-GB' then 'en_GB'
               when 'en-IL' then 'en_IL'
               when 'es-MX' then 'es_MX'
               when %r{^es} then 'es_ES'
               when %r{^fi} then 'fi_FI'
               when 'fr-CA' then 'fr_CA'
               when 'fr-MA' then 'fr_MA'
               when %r{^fr} then 'fr_FR'
               when %r{^hu} then 'hu_HU'
               when %r{^it} then 'it_IT'
               when %r{^ja} then 'ja_JP'
               when %r{^ko} then 'ko_KR'
               when %r{^nb} then 'nb_NO'
               when %r{^nl} then 'nl_NL'
               when %r{^pl} then 'pl_PL'
               when %r{^pt} then 'pt_BR'
               when %r{^ru} then 'ru_RU'
               when %r{^sv} then 'sv_SE'
               when %r{^tr} then 'tr_TR'
               when %r{^uk} then 'uk_UA'
               when 'zh-TW' then 'zh_TW'
               when %r{^zh} then 'zh_CN'
               else
                 'en_US'
               end

    deployment_xml = "#{staged_path}/Adobe Illustrator CC 2015/Deployment/deployment.xml"

    IO.write deployment_xml, IO.read(deployment_xml).sub(%r{>en_US<}, ">#{language}<")

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{deployment_xml}"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Illustrator\ CC\ 2015/Deployment/uninstall.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
