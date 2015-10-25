cask :v1 => 'adobe-illustrator-cc' do
  version :latest
  sha256 :no_check

  url 'http://trials3.adobe.com/AdobeProducts/ILST/19/osx10-64/Illustrator_19_LS20.dmg',
      :user_agent => :fake,
      :cookies => { 'MM_TRIALS' => '1234' }
  name 'Adobe Illustrator CC 2015'
  homepage 'https://www.adobe.com/products/illustrator.html'
  license :commercial
  tags :vendor => 'Adobe'

  preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Illustrator\ CC\ 2015/Deployment/deployment.xml"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Illustrator CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ Illustrator\ CC\ 2015/Deployment/uninstall.xml"
  end

  uninstall :rmdir => '/Applications/Utilities/Adobe Installers'
end
