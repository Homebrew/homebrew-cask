cask 'sococo' do
  version '6.4.0-19484'
  sha256 '6da5bd6109634ff4a75fe41b3be6ce314e57bd92a4d736e927b04fd1e7f7fd87'

  url "https://s.sococo.com/rs/client/mac/Sococo-#{version}.dmg"
  appcast 'https://s.sococo.com/rs/client/latest.json'
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  depends_on macos: '>= :lion'

  app 'Sococo.app'
end
