cask 'imaging-edge' do
  version '1.0.1_1712a,boACM00MOv'
  sha256 '24312f445c59b2a569913f12231911d9dd6c486fa394044d31518f07da328fe0'

  # ids.update.sony.net/IDC/ was verified as official when first introduced to the cask
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
