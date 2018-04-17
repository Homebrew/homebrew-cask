cask 'codeblocks' do
  version '13.12'
  sha256 'ef0b541a8897db3132494b899034019739ccee8b8add2a36f018922a82d08b84'

  # sourceforge.net/codeblocks was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/codeblocks/Binaries/#{version}/MacOS/CodeBlocks-#{version}-mac.zip"
  appcast 'https://sourceforge.net/projects/codeblocks/rss?path=/Binaries',
          checkpoint: '25d42775661f7c82a963933d003c8c678f6c0e91b04cf27d68ad8cc0d2954322'
  name 'Code::Blocks'
  homepage 'http://www.codeblocks.org/'

  app 'CodeBlocks.app'
end
