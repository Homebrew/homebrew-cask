cask 'rekordbox' do
  version '5.5.0'
  sha256 '28228a171c570d19a5c95deedd2e32d8aa61d295c0ef21159cc4f30b912898a7'

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
