cask 'stella' do
  version '4.7.3'
  sha256 'b78cc81541830bc054318858e11dc07254bf1e7c64095f19479f8301b42aab77'

  # github.com/stella-emu/stella/releases/download was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/release-#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom',
          checkpoint: 'bed2f880db4e38155c5a5d730fbce423fe30b9ebacc0fd1eb1126644f1306440'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
