cask :v1 => 'flashlight' do
  version 'v0.42-alpha'
  sha256 '9a2f787ca691c49379510dcb89b699e2de33710d73bb9bf79459a12027d75a74'

  url "https://github.com/nate-parrott/Flashlight/releases/download/#{version}/Flashlight.zip"
  homepage 'http://flashlight.nateparrott.com/'
  license :unknown

  app 'Flashlight.app'
end
