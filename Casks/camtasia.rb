cask 'camtasia' do
  version '2019.0.6'
  sha256 'f9ece1937f9ddb85d37f0b6e8f5fd831375b68d20e8b0fe55095b8f5dc218ee9'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "Camtasia #{version.major}.app"
end
