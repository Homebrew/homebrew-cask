cask 'rtx' do
  version :latest
  sha256 :no_check

  url 'http://www.rtxapp.com/download'
  name 'RTX'
  homepage 'http://www.rtxapp.com/mac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RTX.app'
end
