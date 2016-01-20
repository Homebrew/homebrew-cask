cask 'adobe-indesign-cc' do
  version '2015'
  sha256 '1387e8180cbe61ecff2146df25c2d71dd68fa59e8828928464d20db188b3cd52'

  url 'http://trials3.adobe.com/AdobeProducts/IDSN/11/osx10/InDesign_11_LS20.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe InDesign CC'
  homepage 'https://www.adobe.com/products/indesign.html'
  license :commercial

  preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ InDesign\ CC\ 2015/deploy/install.xml"
  end

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe InDesign CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe\ InDesign\ CC\ 2015/deploy/remove.xml"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
