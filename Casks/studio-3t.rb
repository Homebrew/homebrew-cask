cask 'studio-3t' do
  version '2018.3.0'
  sha256 '24bec626660ce9e10d83cec78afb4927465a870a4b7e9c9a342fde1cadbb89ec'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt',
          checkpoint: 'a64f3475f7e32b00689cd90faa5f21c8a5807cdcc9d0e6fb38f325925fd9188d'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
