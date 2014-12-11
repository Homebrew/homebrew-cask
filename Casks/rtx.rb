cask :v1 => 'rtx' do
  version :latest
  sha256 :no_check

  url 'http://www.rtxapp.com/download'
  homepage 'http://www.rtxapp.com/mac/'
  license :unknown    # todo: improve this machine-generated value

  app 'RTX.app'
end
