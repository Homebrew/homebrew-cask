cask 'security-growler' do
  version '2.3'
  sha256 'ef00c7effca5fb1001498c3490190f9c923bbefa2a0dd2c21df15374bd23c962'

  url "https://github.com/pirate/security-growler/releases/download/v#{version}/Security.Growler.app.zip"
  appcast 'https://github.com/pirate/security-growler/releases.atom',
          checkpoint: '8e66d2ad02cdecc2728c20c7cf6352614d7b3b5de218a3adc4e496728b72f396'
  name 'Security Growler'
  homepage 'https://github.com/pirate/security-growler'

  depends_on macos: '>= :mountain_lion'

  app 'Security Growler.app'
end
