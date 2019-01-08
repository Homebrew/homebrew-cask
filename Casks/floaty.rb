cask 'floaty' do
  version '0.4'
  sha256 'fb5b4473ce58ea524fd9771b1eb89388a017eb6774afbaaa66c12c5add1bfd40'

  url "https://github.com/jameszaghini/floaty/releases/download/#{version}/Floaty.app.zip"
  appcast 'https://github.com/jameszaghini/floaty/releases.atom'
  name 'Floaty'
  homepage 'https://github.com/jameszaghini/floaty'

  app 'Floaty.app'
end
