cask 'rekordbox' do
  version '5.8.4'
  sha256 '8dd1a88652f5b8a1fb823c24f15e1e7db8b2c2bc7eff35855fece4e05f83326a'

  url "https://rekordbox.com/_app/files/Install_rekordbox_#{version.dots_to_underscores}.pkg.zip"
  appcast 'https://rekordbox.com/en/support/releasenote.php'
  name 'rekordbox'
  homepage 'https://rekordbox.com/en/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  pkg "Install_rekordbox_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.pioneer.rekordbox.#{version.major}.*",
            delete:  "/Applications/rekordbox #{version.major}"

  zap trash: [
               '~/Library/Application Support/Pioneer/rekordbox',
               '~/Library/Pioneer/rekordbox',
             ]
end
