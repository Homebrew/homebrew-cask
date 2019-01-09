cask 'aircall' do
  version '1.6.4'
  sha256 'df0cdb10a8619673cbc33031baeeb9fd40f3acf0845ecbadffc15c0adf61bca8'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
