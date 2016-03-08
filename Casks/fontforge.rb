cask 'fontforge' do
  version '2015-08-24'
  sha256 '49d7f59350155b29ac0979987e35066beb8d4f30c6b79a87bc79b9b1f87c5bca'

  # github.com/fontforge/fontforge was verified as official when first introduced to the cask
  url "https://github.com/fontforge/fontforge/releases/download/#{version.delete('-')}/Fontforge-#{version}-Terminal_only.dmg"
  appcast 'https://github.com/fontforge/fontforge/releases.atom',
          checkpoint: '798b4528144c6f8a7bb3ae6644029f45c3006382cbcdcdd49e95fb5e6bfba96f'
  name 'FontForge'
  homepage 'https://fontforge.github.io/en-US/'
  license :bsd

  depends_on x11: true

  app 'FontForge.app'

  caveats <<-EOS.undent
    Version '2015-08-24' of #{token} has an issue that requires it to be launched from a terminal.

    Read more: https://github.com/fontforge/fontforge/releases/tag/20150824
  EOS
end
