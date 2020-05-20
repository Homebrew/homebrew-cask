cask 'camtasia' do
  version '2020.0.2'
  sha256 '1c317e2c0b5aded72228b6df3c992e6692e9e026791166e50f23dca22562c175'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app "Camtasia #{version.major}.app"
end
