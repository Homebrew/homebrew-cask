cask :v1 => 'lightworks' do
  version '12.5.0'
  sha256 '579a953a975de6b0c7b8c3608286576b835288444f14b06a08297f94602cd317'

  url "https://www.lwks.com/dmpub/lightworks_v#{version}.dmg"
  name 'Lightworks'
  homepage 'https://www.lwks.com'
  license :freemium

  app 'Lightworks.app'

  depends_on :macos => '>= 10.8'
end
