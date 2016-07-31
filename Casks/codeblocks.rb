cask 'codeblocks' do
  version '13.12'
  sha256 'ef0b541a8897db3132494b899034019739ccee8b8add2a36f018922a82d08b84'

  # sourceforge.net/project/codeblocks was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/codeblocks/Binaries/#{version}/MacOS/CodeBlocks-#{version}-mac.zip"
  appcast 'https://sourceforge.net/projects/codeblocks/rss',
          checkpoint: 'd68ca3825f6338eb825d9946c0f9c0bd9083b0d03ff77582c27f186106dfdcca'
  name 'Code::Blocks'
  homepage 'http://www.codeblocks.org'
  license :gpl

  app 'CodeBlocks.app'
end
