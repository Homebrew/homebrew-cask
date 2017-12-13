cask 'imaging-edge' do
  version '1.0.0,1711a'
  sha256 '12caf3a51f91ed97607873cbbaeb30913cc207a3f76abe9be43f7330f16a3393'

  # ids.update.sony.net/IDC/OTU7dPSwXY was verified as official when first introduced to the cask
  url "http://ids.update.sony.net/IDC/OTU7dPSwXY/IE#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  name 'Sony Imaging Edge'
  homepage 'https://support.d-imaging.sony.co.jp/app/imagingedge/'

  pkg 'IE_INST.pkg'

  uninstall pkgutil: "com.sony.ImagingEdgeVer.#{version.major}.pkg"

  zap trash: [
               '~/Library/Caches/com.sony.Viewer',
               '~/Library/Preferences/com.sony.Edit.plist',
               '~/Library/Preferences/com.sony.Remote.plist',
               '~/Library/Preferences/com.sony.Viewer.plist',
               '~/Library/Saved Application State/com.sony.Viewer.savedState',
             ]
end
