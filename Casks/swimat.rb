cask 'swimat' do
  version '1.5.3'
  sha256 'd5acfcd85fe791b2817e6a68d53aac00176d19f47bd2a482e01b70b5739f0c03'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
