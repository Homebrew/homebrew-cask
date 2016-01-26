cask 'doomrl' do
  version '0997'
  sha256 'fe77aca0af5dd774d1a21dc4f2d0618636c1fe47aa4593bcfe29f0445209b4e2'

  url "http://doom.chaosforge.org/file_download/31/doomrl-#{version}.dmg"
  name 'Doom the Roguelike'
  homepage 'http://doom.chaosforge.org'
  license :gratis

  depends_on arch: :x86_64

  app 'DoomRL.app'
end
