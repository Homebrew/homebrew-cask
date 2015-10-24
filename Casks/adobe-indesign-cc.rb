cask :v1 => 'adobe-indesign-cc' do
  version :latest
  sha256 :no_check

  url 'http://trials3.adobe.com/AdobeProducts/IDSN/11/osx10/InDesign_11_LS20.dmg',
      :user_agent => :fake,
      :cookies => { 'MM_TRIALS' => '1234' }
  name 'Adobe InDesign CC 2015'
  homepage 'https://www.adobe.com/products/indesign.html'
  license :commercial
  tags :vendor => 'Adobe'

  preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ InDesign\ CC\ 2015/deploy/install.xml"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ InDesign\ CC\ 2015/deploy/remove.xml"
  end

  uninstall :rmdir => '/Applications/Utilities/Adobe Installers'
end
