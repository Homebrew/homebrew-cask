cask 'epichrome' do
  version '2.1.18'
  sha256 '47ad63649deb9fb0fb389a7b9caccba089e059981c1a8d17d5e24656ff069f65'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: 'c510586ccd7d6682a802365024da2d00e2cc262a61fa23a4251b025ca6b15dc5'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  app 'Epichrome.app'
end
