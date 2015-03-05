cask :v1 => 'commandq' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/commandq/download/'
  homepage 'http://clickontyler.com/commandq/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CommandQ.app'
end
