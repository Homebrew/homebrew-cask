cask 'camtasia' do
  version '2020.0.0'
  sha256 '8c526e3357ab43cc07d3961d4466a6f032754a0cd87697e12021148fd4c1bc02'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "Camtasia #{version.major}.app"
end
