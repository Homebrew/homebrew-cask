cask :v1 => 'mdrp' do
  version :latest
  sha256 :no_check

  url 'http://www.macdvdripperpro.com/download/'
  homepage 'http://www.macdvdripperpro.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MDRP.app'
end
