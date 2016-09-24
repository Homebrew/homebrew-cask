cask 'adobe-indesign-cc' do
  version '11'
  sha256 '1387e8180cbe61ecff2146df25c2d71dd68fa59e8828928464d20db188b3cd52'

  url "http://trials3.adobe.com/AdobeProducts/IDSN/#{version}/osx10/InDesign_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe InDesign CC'
  homepage 'https://www.adobe.com/products/indesign.html'
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

    deployment_xml = "#{staged_path}/Adobe InDesign CC 2015/deploy/install.xml"

    IO.write(deployment_xml, IO.read(deployment_xml).sub(%r{>en_US<}, ">#{language}<"))

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{deployment_xml}"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ InDesign\ CC\ 2015/deploy/remove.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
