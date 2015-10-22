cask :v1 => 'fontforge' do
  version '20150824'
  sha256 '49d7f59350155b29ac0979987e35066beb8d4f30c6b79a87bc79b9b1f87c5bca'

  url "https://github.com/fontforge/fontforge/releases/download/#{version}/FontForge-#{version}.dmg"
  appcast 'https://github.com/fontforge/fontforge/releases.atom'
  name 'FontForge'
  homepage 'https://fontforge.github.io/en-US/'
  license :bsd

  app 'FontForge.app'

  depends_on :x11 => true
end
