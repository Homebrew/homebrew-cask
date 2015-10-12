cask :v1 => 'paw' do
  version '2.2.5'
  sha256 '1a752b5d97fc8788839ce447411d26b0b43a433a4f8f4098e79d842c3ff58e46'

  url "https://luckymarmot.com/paw/download/#{version}"
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
