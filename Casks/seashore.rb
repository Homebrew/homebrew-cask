cask 'seashore' do
  version '2.4.4'
  sha256 '7513df22fb037ab3374fc71640f5a300590ecbedc9ee35f1c47025ad86aa411d'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
