cask :v1 => 'flashlight' do
  version 'v0.7-alpha'
  sha256 '1d856260769ef6cd017c80fec7e44ad588cae672fea4e6e6f4d7c44f14f85e05'

  url "https://github.com/nate-parrott/Flashlight/releases/download/#{version}/Flashlight.zip"
  homepage 'http://flashlight.nateparrott.com/'
  license :gpl

  app 'Flashlight.app'
end
