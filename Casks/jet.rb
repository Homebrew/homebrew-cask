cask 'jet' do
  version '1.17.0'
  sha256 'b728fb6070081d81e6c1c58a504426c3cd554d408ab80779b18b133873f413fe'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/'

  binary 'jet'
end
