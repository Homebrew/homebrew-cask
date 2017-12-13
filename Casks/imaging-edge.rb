cask 'imaging-edge' do
  version :latest
  sha256 :no_check

  url 'https://support.d-imaging.sony.co.jp/disoft_DL/imagingedge_DL/mac?fm=zh-tw'
  name 'Imaging Edge'
  homepage 'https://support.d-imaging.sony.co.jp/app/imagingedge/'

  pkg 'IE_INST.pkg'

  uninstall pkgutil: 'com.sony.ImagingEdgeVer.1.pkg'

  zap trash: [
               '~/Library/Caches/com.sony.Viewer',
               '~/Library/Preferences/com.sony.Edit.plist',
               '~/Library/Preferences/com.sony.Remote.plist',
               '~/Library/Preferences/com.sony.Viewer.plist',
               '~/Library/Saved Application State/com.sony.Viewer.savedState',
             ]
end
