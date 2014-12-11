cask :v1 => 'paw' do
  version :latest
  sha256 :no_check

  url 'https://luckymarmot.com/paw/download'
  homepage 'http://luckymarmot.com/paw'
  license :unknown    # todo: improve this machine-generated value

  app 'Paw.app'
end
