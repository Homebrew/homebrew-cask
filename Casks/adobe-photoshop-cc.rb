cask 'adobe-photoshop-cc' do
  version '16'
  sha256 'c5a30a102299215b7df7e0cc519d3d63c20a63b0fecf54bc41eb68061c96dec7'

  url "http://trials3.adobe.com/AdobeProducts/PHSP/#{version}/osx10/Photoshop_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop CC'
  homepage 'https://www.adobe.com/products/photoshop.html'
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

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Photoshop\ CC\ 2015/Deployment/#{language}_Deployment.xml"
  end

  uninstall_preflight do
    uninstall_xml = "#{staged_path}/uninstall.xml"

    IO.write uninstall_xml, <<-EOS.undent
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

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{uninstall_xml}"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
