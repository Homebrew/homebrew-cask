cask :v1 => 'adobe-photoshop-cc' do
  version :latest
  sha256 :no_check

  url 'http://trials3.adobe.com/AdobeProducts/PHSP/16/osx10/Photoshop_16_LS20.dmg',
      :user_agent => :fake,
      :cookies => { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop CC 2015'
  homepage 'https://www.adobe.com/products/photoshop.html'
  license :commercial
  tags :vendor => 'Adobe'

  preflight do
    file = File.open "#{staged_path}/uninstall.xml", 'w'
    file.puts '<?xml version="1.0" encoding="utf-8"?>
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
</Deployment>'
    file.close

    system_lang = `defaults read .GlobalPreferences AppleLanguages`.tr('(")','').split(/,/).first.strip

    deployment_lang =  case system_lang
                       when 'cs', 'cs-CZ'          then 'cs_CZ'
                       when 'da', 'da-DK'          then 'da_DK'
                       when 'de', 'de-AT',
                            'de-CH', 'de-DE'       then 'de_DE'
                       when 'en-AE'                then 'en_AE'
                       when 'en-GB'                then 'en_GB'
                       when 'en-IL'                then 'en_IL'
                       when 'en-US'                then 'en_US'
                       when 'es', 'en-ES'          then 'es_ES'
                       when 'es-MX'                then 'es_MX'
                       when 'fi', 'fi-FI'          then 'fi_FI'
                       when 'fr-CA'                then 'fr_CA'
                       when 'fr', 'fr-FR'          then 'fr_FR'
                       when 'fr-MA'                then 'fr_MA'
                       when 'hu', 'hu-HU'          then 'hu_HU'
                       when 'it', 'it-IT'          then 'it_IT'
                       when 'ja', 'ja-JP'          then 'ja_JP'
                       when 'ko', 'ko-KR'          then 'ko_KR'
                       when 'nb', 'nb-NO'          then 'nb_NO'
                       when 'nl', 'nl-NL'          then 'nl_NL'
                       when 'pl', 'pl-PL'          then 'pl_PL'
                       when 'pt', 'pt-BR', 'pt-PT' then 'pt_BR'
                       when 'ru', 'ru-RU'          then 'ru_RU'
                       when 'sv', 'sv-SE'          then 'sv_SE'
                       when 'tr', 'tr-TR'          then 'tr_TR'
                       when 'uk', 'uk-UA'          then 'uk_UA'
                       when 'zh', 'zh-CN'          then 'zh_CN'
                       when 'zh-TW'                then 'zh_TW'
                       else
                         'en_US'
                       end

    printf "System Language: #{system_lang} --> Installation Language: #{deployment_lang}\n"

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Photoshop\ CC\ 2015/Deployment/#{deployment_lang}_Deployment.xml"

  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/uninstall.xml"
  end

  uninstall :rmdir => '/Applications/Utilities/Adobe Installers'
end
