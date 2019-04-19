cask 'fontforge' do
  version '2019.04.13.7f6f1d0'
  sha256 '365e4d406ee524e8bdb5646754cf1ebcb94ad68866a1bdc6870a17c4a14e1a46'

  # github.com/fontforge/fontforge was verified as official when first introduced to the cask
  url "https://github.com/fontforge/fontforge/releases/download/#{version.major_minor_patch.no_dots}/FontForge-#{version.dots_to_hyphens}.app.dmg"
  appcast 'https://github.com/fontforge/fontforge/releases.atom'
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
