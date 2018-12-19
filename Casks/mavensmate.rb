cask 'mavensmate' do
  version '0.0.11-beta.7'
  sha256 'ed657aef9ab474e42e0f4e28f9aaf7fe153e29f9505f673d2dbdbfafdd31b553'

  url "https://github.com/joeferraro/MavensMate-Desktop/releases/download/v#{version}/MavensMate-Desktop-#{version}.dmg"
  appcast 'https://github.com/joeferraro/MavensMate-Desktop/releases.atom'
  name 'MavensMate'
  homepage 'https://github.com/joeferraro/MavensMate-Desktop'

  app 'MavensMate.app'
end
