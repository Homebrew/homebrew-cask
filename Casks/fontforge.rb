cask 'fontforge' do
  version '2019.03.17.1d421d1'
  sha256 '1b9a04a478e81501f1dda46e0c4ecccf7c586b5cc617e6c7dffdd06e9e63b102'

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
