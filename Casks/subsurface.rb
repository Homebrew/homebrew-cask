cask :v1 => 'subsurface' do
  version '4.4.2'
  sha256 '7769b1b94623b1ddefe194c361888c9a88d7b45ad039a4a4082099b92da824a8'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org'
  license :gpl

  app 'Subsurface.app'
end
