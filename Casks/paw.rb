cask :v1 => 'paw' do
  version :latest
  sha256 :no_check

  url 'https://luckymarmot.com/paw/download'
  homepage 'http://luckymarmot.com/paw'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Paw.app'
end
