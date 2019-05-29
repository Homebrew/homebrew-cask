cask 'archi' do
  version '4.4.0'
  sha256 '7205a6c8ba9eb797c2e6e659301b44ac67520af74d970a1ec39378fbe71a7a82'

  url "https://www.archimatetool.com/downloads/#{version}/Archi-Mac-#{version}.zip",
      referer: 'https://www.archimatetool.com/download/'
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
