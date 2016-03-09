cask 'piskel' do
  version '0.5.5.1'
  sha256 '88a8f90bdbd852c4b9d957b02f9af67fd8c076ababdf4009ad8b4985a90f38e3'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/17803671/piskel/standalone/mac/piskel-#{version}.dmg"
  name 'Piskel'
  homepage 'http://www.piskelapp.com'
  license :affero

  app 'Piskel.app'
end
