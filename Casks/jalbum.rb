cask 'jalbum' do
  version '21.0'
  sha256 '57ccdad0826738dc64e53cdf172afc6b7838bd21caaf51ca22e8668f4c5bbe64'

  url "https://download.jalbum.net/download/#{version.major}/MacOSX/jAlbum.dmg"
  appcast 'https://jalbum.net/en/software/release-notes',
          must_contain: version.major_minor.chomp('.0')
  name 'jAlbum'
  homepage 'https://jalbum.net/'

  app 'jAlbum.app'
end
