cask 'prepros' do
  version '7.2.0'
  sha256 '717a0217c3d058190eff46e3c58ace7de67aed5cb8bdef0c813901e68b551b8a'

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast 'https://prepros.io/changelog'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
