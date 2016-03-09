cask 'medis' do
  version '0.2.1'
  sha256 '222226a17c0a2902be6b91e2296e74f9c3b0bce6f58932b989449376dec3ee2e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/luin/medis/releases/download/v#{version}/medis-v#{version}-mac-x64.zip"
  appcast 'https://github.com/luin/medis/releases.atom',
          checkpoint: 'e80efcbecdeaa3ad3edf97c013b96e2f2a1656a2486de2200d52bb568f697055'
  name 'Medis'
  homepage 'http://getmedis.com'
  license :mit

  app 'Medis.app'
end
