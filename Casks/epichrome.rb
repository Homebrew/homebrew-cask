cask 'epichrome' do
  version '2.1.16'
  sha256 '244b3e77aef4d8c772753515917c508c7f46e2ddd01531a04def11e259727eae'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: 'f5b42de4c613fe3247cffc74da06c4426137058cfe4d4ae49d9fc3e81b56c123'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  app 'Epichrome.app'
end
