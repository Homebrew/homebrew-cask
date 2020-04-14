cask 'rekordbox' do
  version '6.0.0,20200410142854'
  sha256 '9da569942dc2246f5a2c73a06b2bc25c97afa57fab2f66343489a90a5c2b5fde'

  url "https://cdn.rekordbox.com/files/#{version.after_comma}/Install_rekordbox_#{version.before_comma.dots_to_underscores}.pkg_.zip"
  appcast 'https://rekordbox.com/en/support/releasenote/'
  name 'rekordbox'
  homepage 'https://rekordbox.com/en/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  pkg "Install_rekordbox_#{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.pioneer.rekordbox.#{version.major}.*",
            delete:  "/Applications/rekordbox #{version.major}"

  zap trash: [
               '~/Library/Application Support/Pioneer/rekordbox',
               '~/Library/Pioneer/rekordbox',
             ]
end
