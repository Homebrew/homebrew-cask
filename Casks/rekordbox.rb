cask 'rekordbox' do
  version '5.4.2'
  sha256 '45dadffa16c77233125d19eb911eea3e866fe012163346a56357276171025608'

  url "https://rekordbox.com/_app/files/Install_rekordbox_#{version.dots_to_underscores}.pkg.zip"
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
