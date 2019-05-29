cask 'epichrome' do
  version '2.2.4'
  sha256 'a9da4cb25a8c8797fb8ae7fddb1e78511a6812761b701cabb5aa6007be3cba7a'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  app 'Epichrome.app'
end
