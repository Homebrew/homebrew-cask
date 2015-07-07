cask :v1 => 'paw' do
  version :latest
  sha256 :no_check

  url 'https://luckymarmot.com/paw/download'
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
