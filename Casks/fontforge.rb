cask 'fontforge' do
  version '2016-04-04'
  sha256 '71da3bfad5c20b6746b5e619484b45f208b9e699924de82e8cc9ab709f5e13bb'

  # github.com/fontforge/fontforge was verified as official when first introduced to the cask
  url "https://github.com/fontforge/fontforge/releases/download/#{version.no_hyphens}/FontForge-#{version}-Mac.app.dmg.zip"
  appcast 'https://github.com/fontforge/fontforge/releases.atom',
          checkpoint: 'dcb2587675266e30c2ac1530982c66f170a27a962d77708f8862d5f469ff8102'
  name 'FontForge'
  homepage 'https://fontforge.github.io/en-US/'

  depends_on x11: true
  depends_on macos: '>= :yosemite'

  app 'FontForge.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS
end
