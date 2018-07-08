cask 'imaging-edge' do
  version '1.2.0_1805a,9FloiwulRZ'
  sha256 '79f063cd1b51f9f54541075f296945e7eb894878e7a59276247bb91691cb76cc'

  # ids.update.sony.net/IDC was verified as official when first introduced to the cask
  url "http://ids.update.sony.net/IDC/#{version.after_comma}/IE#{version.before_comma.no_dots}.dmg"
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
