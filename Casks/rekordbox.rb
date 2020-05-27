cask 'rekordbox' do
  version '6.0.1,20200521085017'
  sha256 'c42720e38eda3f55c6a9857930648c20b98d9815460a5a68914a237ff4a4756f'

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
