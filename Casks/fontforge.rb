cask 'fontforge' do
  version '20161005'
  sha256 '30398f6e0ee7cff1c4dd77297fc9ae550dd554538fc7dcde00bb77903d183144'

  # github.com/fontforge/fontforge was verified as official when first introduced to the cask
  url "https://github.com/fontforge/fontforge/releases/download/#{version}/FontForge-20161004-Mac.zip"
  appcast 'https://github.com/fontforge/fontforge/releases.atom',
          checkpoint: '6546727c4b0560a20af0aaaaf22e2080fa63526c6ad29b14517acc2004a3c1af'
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
