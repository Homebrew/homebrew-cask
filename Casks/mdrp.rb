cask :v1 => 'mdrp' do
  version :latest
  sha256 :no_check

  url 'http://www.macdvdripperpro.com/download/'
  homepage 'http://www.macdvdripperpro.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'MDRP.app'
end
