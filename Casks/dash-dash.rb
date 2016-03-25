cask 'dash-dash' do
  version '0.12.0.53'
  sha256 'a49b9a5f0bd098b5013895541d72842367de9490f30b784c555b4ea742327e51'

  url "https://www.dashpay.io/binaries/dash-#{version}-osx.dmg"
  name 'Dash'
  homepage 'https://www.dashpay.io/'
  license :mit

  app 'Dash-Qt.app'
end
