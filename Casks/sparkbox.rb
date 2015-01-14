cask :v1 => 'sparkbox' do
  version :latest
  sha256 :no_check

  url 'http://t.icyblaze.com/sblatest'
  appcast 'http://matrix.icyblaze.com/index.php/checkupdate/p/8'
  homepage 'http://www.icyblaze.com/sparkbox'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sparkbox.app'
end
