cask 'imaging-edge' do
  version '1.3.0_1807a,xMLy8RzMdE'
  sha256 '7fa732b6ac4ff5fb2c79ab54565e9c9dc3e4ed1c6bab816f99fe4fea126115ab'

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
