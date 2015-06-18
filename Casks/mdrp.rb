cask :v1 => 'mdrp' do
  version :latest
  sha256 :no_check

  url 'http://www.macdvdripperpro.com/download/'
  name 'Mac DVDRipper Pro'
  appcast 'http://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          :sha256 => '8e4f7c395dda29438cf1f4a931a626d484886109a01ea9ee733fa6d7c24f4634'
  homepage 'http://www.macdvdripperpro.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MDRP.app'
end
