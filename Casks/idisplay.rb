cask 'idisplay' do
  version '2.3.10'
  sha256 '6d87e0566e2e2693d89c4fdb1cddcfed9db6316f6f7b2bada24104ea18b996ae'

  # shape.ag was verified as official when first introduced to the cask
  url "https://www.shape.ag/freedownload/iDisplay/iDisplayFull_#{version.dots_to_underscores}.dmg"
  name 'iDisplay'
  homepage 'https://getidisplay.com/'

  pkg 'iDisplay.pkg'

  uninstall launchctl: 'ag.shape.MSMToolHelper',
            pkgutil:   [
                         'ag.shape.iDisplay.pkg',
                         'ag.shape.MSM*.pkg',
                       ],
            signal:    ['TERM', 'com.shapeservices.idisplay-host-full']

  zap trash: '~/Library/Preferences/com.shapeservices.idisplay-host-full.plist'

  caveats do
    reboot
  end
end
