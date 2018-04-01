cask 'fontforge' do
  version '20170731'
  sha256 '980c66e00f0f5c7a722eadd8b78a0ef2b20a7ccd952149cbfdfeaae9e66e4d4e'

  # github.com/fontforge/fontforge was verified as official when first introduced to the cask
  url "https://github.com/fontforge/fontforge/releases/download/#{version}/FontForge-20170730-Mac.dmg"
  appcast 'https://github.com/fontforge/fontforge/releases.atom',
          checkpoint: 'aa306109b766f07dd7d0a1b7bea26df861d85c35d813a424d470b70539d084ed'
  name 'FontForge'
  homepage 'https://fontforge.github.io/en-US/'

  depends_on x11: true
  depends_on macos: '>= :yosemite'

  app 'FontForge.app'

  caveats <<~EOS
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS
end
