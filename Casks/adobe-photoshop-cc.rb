cask 'adobe-photoshop-cc' do
  version '2015'
  sha256 'c5a30a102299215b7df7e0cc519d3d63c20a63b0fecf54bc41eb68061c96dec7'

  url 'http://trials3.adobe.com/AdobeProducts/PHSP/16/osx10/Photoshop_16_LS20.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop CC'
  homepage 'https://www.adobe.com/products/photoshop.html'
  license :commercial

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

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Photoshop\ CC\ 2015/Deployment/en_US_Deployment.xml"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Photoshop CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/uninstall.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
