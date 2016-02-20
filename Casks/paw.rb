cask 'paw' do
  version '2.3'
  sha256 '0da3d65788486f985dfbca5b2e1a587720ad61ddc7c19d94a106f54e10fd5308'

  url "https://luckymarmot.com/paw/download/#{version}"
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
