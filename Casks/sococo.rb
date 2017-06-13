cask 'sococo' do
  version '0.5.4-14344'
  sha256 '6430e60970265f334a9f5c998c4e05809804119b002169d0d231e2bb3e896464'

  url "https://s.sococo.com/rs/client/mac/Sococo-#{version}.dmg"
  appcast 'https://s.sococo.com/rs/client/latest.json',
          checkpoint: '8b399c9b48f81ae7340f4d391dee398f4d3533671154f94f85da342c323da45a'
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  depends_on macos: '>= :lion'

  app 'Sococo.app'
end
