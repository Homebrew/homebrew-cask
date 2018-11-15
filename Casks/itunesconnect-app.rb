cask 'itunesconnect-app' do
  version '1.1'
  sha256 '8c22e0323284ed4bb70d6872bb31659353e5e898f30053b64d6d95a21f9ac081'

  url "https://github.com/ronakdev/itunesconnect/releases/download/#{version}/iTunesConnect.app.zip"
  appcast 'https://github.com/ronakdev/itunesconnect/releases.atom'
  name 'iTunesConnect'
  homepage 'https://github.com/ronakdev/itunesconnect'

  app 'iTunesConnect.app'
end
