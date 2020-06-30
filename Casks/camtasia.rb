cask 'camtasia' do
  version '2020.0.5'
  sha256 'f79f9a89f992eb336b6219719ca959d8557078621099c089d4a0c906eae78d3e'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app "Camtasia #{version.major}.app"
end
