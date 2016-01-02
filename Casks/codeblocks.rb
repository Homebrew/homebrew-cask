cask 'codeblocks' do
  version '13.12'
  sha256 'ef0b541a8897db3132494b899034019739ccee8b8add2a36f018922a82d08b84'

  url "http://downloads.sourceforge.net/project/codeblocks/Binaries/#{version}/MacOS/CodeBlocks-#{version}-mac.zip"
  name 'Code::Blocks'
  homepage 'http://www.codeblocks.org'
  license :gpl

  app 'CodeBlocks.app'
end
