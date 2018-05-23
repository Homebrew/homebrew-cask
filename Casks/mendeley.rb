cask 'mendeley' do
  version '1.19'
  sha256 '6c9f79d5f9b1385fed8daa7a65c137e8a8c67a7b3ad9552956ea0ce723d59fe6'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  appcast 'https://www.mendeley.com/release-notes',
          checkpoint: 'd57c3cd17af890a82b0f4342fcd6fabcb42f5b4ba1e701b1d8f66dcdcfcd36ec'
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
