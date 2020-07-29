cask 'imaging-edge' do
  version '1.0.02,2BqD6b8EKL'
  sha256 'b4eab497dc35974f9d56261c326ef2af538153b27455b93756d980d5786bb379'

  url "https://di.update.sony.net/NEX/#{version.after_comma}/ied_#{version.before_comma.dots_to_underscores}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.d-imaging.sony.co.jp/disoft_DL/desktop_DL/mac?fm=en',
          must_contain: version.after_comma
  name 'Sony Imaging Edge'
  homepage 'https://imagingedge.sony.net/en-us/ie-desktop.html'

  pkg "ied_#{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.sony.ImagingEdgeVer.1.pkg',
            delete:  '/Applications/Imaging Edge'

  zap trash: [
               '~/Library/Caches/com.sony.Viewer',
               '~/Library/Preferences/com.sony.Edit.plist',
               '~/Library/Preferences/com.sony.Remote.plist',
               '~/Library/Preferences/com.sony.Viewer.plist',
               '~/Library/Saved Application State/com.sony.Viewer.savedState',
             ]
end
