cask 'paw' do
  version '2.3'
  sha256 '0da3d65788486f985dfbca5b2e1a587720ad61ddc7c19d94a106f54e10fd5308'

  url "https://luckymarmot.com/paw/download/#{version}"
  appcast 'https://luckymarmot.com/api/v2/updates/appcast',
          checkpoint: 'cf9d5904df2610cb09823bd2a77fbe6bce8c15b4772a41f9892533ca82f72047'
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
