cask 'adobe-illustrator-cc' do
  version '2015'
  sha256 'ca3e059b130e0b9a6c56ae55b89fa4d490650e25a9371072f43285c10c9821d2'

  url 'http://trials3.adobe.com/AdobeProducts/ILST/19/osx10-64/Illustrator_19_LS20.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Illustrator CC'
  homepage 'https://www.adobe.com/products/illustrator.html'
  license :commercial

  preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Illustrator\ CC\ 2015/Deployment/deployment.xml"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Illustrator\ CC\ 2015/Deployment/uninstall.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
