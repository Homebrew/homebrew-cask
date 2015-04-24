cask :v1 => 'avocode' do
  version '2.0.0'
  sha256 '29d4d79c6b7f719cf1f945e1747c150a71fc368758b38f25ad4390f7bc4493b5'

  url "http://mediacdn.avocode.com/download/avocode-app/#{version}/avocode-app-mac-#{version}.zip"
  name 'Avocode'
  homepage 'http://avocode.com/'
  license :commercial

  app 'Avocode.app'
end
