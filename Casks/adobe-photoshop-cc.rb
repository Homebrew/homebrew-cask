cask 'adobe-photoshop-cc' do
  version '16'
  sha256 'c5a30a102299215b7df7e0cc519d3d63c20a63b0fecf54bc41eb68061c96dec7'

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

  url "http://trials3.adobe.com/AdobeProducts/PHSP/#{version}/osx10/Photoshop_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop CC'
  homepage 'https://www.adobe.com/products/photoshop.html'

  preflight do
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
