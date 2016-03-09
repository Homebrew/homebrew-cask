cask 'prizmo' do
  version '3.1.8'
  sha256 '2a57ec332d5094248aa6ce5e0a6c3ea50d22acd05afb765f0ece31a04012409d'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          checkpoint: '16e7f3d4e35494389f7582fd8ca8ed8b196aeb88e4a2bfd4a4dab7899d4ea510'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
