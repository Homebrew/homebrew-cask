cask 'rekordbox' do
  version '6.0.3,20200713191837'
  sha256 'c7a071e51ba41cb2c512260aedab75d55819c6469723430c1ef4795c7d92f275'

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
