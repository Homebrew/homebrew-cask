cask :v1 => 'mdrp' do
  version :latest
  sha256 :no_check

  url 'http://www.macdvdripperpro.com/download/'
  name 'Mac DVDRipper Pro'
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          :sha256 => '271cc7c77e83248b9e3905bfb61cb0e28ec413d84bffb9783e46696970393f19'
  homepage 'https://www.macdvdripperpro.com/'
  license :commercial

  app 'MDRP.app'
end
