cask 'codeblocks' do
  version '13.12'
  sha256 'ef0b541a8897db3132494b899034019739ccee8b8add2a36f018922a82d08b84'

  # sourceforge.net/codeblocks was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/codeblocks/Binaries/#{version}/MacOS/CodeBlocks-#{version}-mac.zip"
  appcast 'https://sourceforge.net/projects/codeblocks/rss?path=/Binaries',
          checkpoint: '4502ee0eada5102690fc1be210d2c23a3b580f21fc7aca847e0ddc7e353ad502'
  name 'Code::Blocks'
  homepage 'http://www.codeblocks.org'

  app 'CodeBlocks.app'
end
