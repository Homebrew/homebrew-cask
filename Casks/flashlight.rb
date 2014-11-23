cask :v1 => 'flashlight' do
  version 'v0.8-alpha'
  sha256 'db6fcb73f84d83a8a8cf6702fc1972b2fc7f2d7eaed414e544d6b946f959fc6f'

  url "https://github.com/nate-parrott/Flashlight/releases/download/#{version}/Flashlight.zip"
  homepage 'http://flashlight.nateparrott.com/'
  license :gpl

  app 'Flashlight.app'
end
