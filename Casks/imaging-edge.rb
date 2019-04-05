cask 'imaging-edge' do
  version '1.4.0_1901a,7dLXQ7xm-t'
  sha256 '7481711176061aa36900fd8f0dd4e04b83a6a2e6bee29084960adba588d23f47'

  # ids.update.sony.net/IDC was verified as official when first introduced to the cask
  url "http://ids.update.sony.net/IDC/#{version.after_comma}/IE#{version.before_comma.no_dots}.dmg"
  name 'Sony Imaging Edge'
  homepage 'https://support.d-imaging.sony.co.jp/app/imagingedge/'

  pkg 'IE_INST.pkg'

  uninstall pkgutil: "com.sony.ImagingEdgeVer.#{version.major}.pkg",
            delete:  '/Applications/Imaging Edge/Viewer.app',
            rmdir:   '/Applications/Imaging Edge'

  zap trash: [
               '~/Library/Caches/com.sony.Viewer',
               '~/Library/Preferences/com.sony.Edit.plist',
               '~/Library/Preferences/com.sony.Remote.plist',
               '~/Library/Preferences/com.sony.Viewer.plist',
               '~/Library/Saved Application State/com.sony.Viewer.savedState',
             ]
end
