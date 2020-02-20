cask 'prizmo' do
  version '4.0.2'
  sha256 '3299e3e11e395aec59642b15c42eee9a35276906ae7e1cbe3925421e705b18cb'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
