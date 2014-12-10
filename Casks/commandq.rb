cask :v1 => 'commandq' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/commandq/download/'
  homepage 'http://clickontyler.com/commandq/'
  license :unknown    # todo: improve this machine-generated value

  app 'CommandQ.app'
end
