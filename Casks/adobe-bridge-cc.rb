cask 'adobe-bridge-cc' do
  version '2015'
  sha256 'd8f27894419077792b3a01c63150c7bfe43599cf3ebeb240770046c56bc79c94'

  url 'http://trials3.adobe.com/AdobeProducts/KBRG/6/osx10/Bridge_6_LS20.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Bridge CC'
  homepage 'https://www.adobe.com/products/bridge.html'

  preflight do
    system_command "#{staged_path}/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent',
                           "--deploymentFile=#{staged_path}/deployment/AdobeBridge6-mul.install.xml",
                         ],
                   sudo: true
  end

  uninstall_preflight do
    system_command "#{staged_path}/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent',
                           "--deploymentFile=#{staged_path}/deployment/AdobeBridge6-mul.remove.xml",
                         ],
                   sudo: true
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
