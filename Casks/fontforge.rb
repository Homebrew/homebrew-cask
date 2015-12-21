cask 'fontforge' do
  version '2015-08-24'
  sha256 '49d7f59350155b29ac0979987e35066beb8d4f30c6b79a87bc79b9b1f87c5bca'

  url "https://github.com/fontforge/fontforge/releases/download/#{version.delete('-')}/Fontforge-#{version}-Terminal_only.dmg"
  appcast 'https://github.com/fontforge/fontforge/releases.atom'
  name 'FontForge'
  homepage 'https://fontforge.github.io/en-US/'
  license :bsd

  app 'FontForge.app'

  depends_on :x11 => true

  caveats <<-EOS.undent
    Version '2015-08-24' of #{token} has an issue that requires it to be launched from a terminal.

    Read more: https://github.com/fontforge/fontforge/releases/tag/20150824
  EOS
end
