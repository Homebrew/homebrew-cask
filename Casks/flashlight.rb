cask :v1 => 'flashlight' do
  version 'v0.5-alpha'
  sha256 '2d9c8b23a4554dea1baf39e215022969871054f252f8fb9b358f1489e63ce146'

  url "https://github.com/nate-parrott/Flashlight/releases/download/#{version}/Flashlight.zip"
  homepage 'http://flashlight.nateparrott.com/'
  license :gpl

  app 'Flashlight.app'
end
