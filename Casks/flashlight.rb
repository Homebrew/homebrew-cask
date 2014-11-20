cask :v1 => 'flashlight' do
  version 'v0.71-alpha'
  sha256 '63c0258267c67e7213afb565882a222788856cbd9e6105bbe966b30ef9722bae'

  url "https://github.com/nate-parrott/Flashlight/releases/download/#{version}/Flashlight.zip"
  homepage 'http://flashlight.nateparrott.com/'
  license :gpl

  app 'Flashlight.app'
end
