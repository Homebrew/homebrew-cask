cask 'prizmo' do
  version '3.1.16'
  sha256 'f97ad5b6c1f35466a87e74c8f6dce24fae83be6b686768a1c3376e61d600bbe7'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml",
          checkpoint: '281011acf59910517dc51120d921d671c913f46ba3ed375ca8a81121e2d41ae9'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
