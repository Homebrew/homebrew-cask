cask 'fontforge' do
  version '20161005'
  sha256 '30398f6e0ee7cff1c4dd77297fc9ae550dd554538fc7dcde00bb77903d183144'

  # github.com/fontforge/fontforge was verified as official when first introduced to the cask
  url "https://github.com/fontforge/fontforge/releases/download/#{version}/FontForge-20161004-Mac.zip"
  appcast 'https://github.com/fontforge/fontforge/releases.atom',
          checkpoint: 'd6f82294326df6025cb352188bcc48ec0a1fba2beb3a18b7bd54602518598a9f'
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
