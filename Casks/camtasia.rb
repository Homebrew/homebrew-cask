cask 'camtasia' do
  version '2018.0.8'
  sha256 '774c82d0c13fddb7d53267396154ddfcbd881dc5602fe23daee34cc42b04e309'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "Camtasia #{version.major}.app"
end
