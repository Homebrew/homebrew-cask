cask 'logitech-presentation' do
  version '1.40.62'
  sha256 'a33c1f4d9027c73aa414cccd038ba3baa2269b5884e8c60cafe89744d608d911'

  url "https://aws13-customer-care-assets.s3.amazonaws.com/Software/Presentation_Installer/LogiPresentation_Silent_Installer_#{version}.zip"
  name 'Logitech Presentation'
  homepage 'https://www.logitech.com/en-us/product/spotlight-presentation-remote/page/spotlight-features'

  installer script: {
                      executable: "#{staged_path}/LogiPresentation Silent Installer.app/Contents/MacOS/LogiPresentation\ Silent\ Installer",
                      args:       ['--analytics', 'NO'],
                      sudo:       true,
                    }

  uninstall quit:      'com.logitech.presenter',
            signal:    [
                         ['TERM', 'com.logitech.presenter'],
                         ['QUIT', 'com.logitech.presenter'],
                         ['INT',  'com.logitech.presenter'],
                         ['HUP',  'com.logitech.presenter'],
                         ['KILL', 'com.logitech.presenter'],
                       ],
            launchctl: 'com.logitech.presenter'
end
