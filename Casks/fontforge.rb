cask 'fontforge' do
  version '2019.08.01.ac635b8'
  sha256 'c5c117b083d8fa73c2ffa19e000d698a3e3cb323b47002c54c1b9047633a227e'

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
