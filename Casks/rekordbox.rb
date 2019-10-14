cask 'rekordbox' do
  version '5.7.0'
  sha256 'ca6451641b2710ee830645128827bf005658dada1851862e80c413965ceb95d5'

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
