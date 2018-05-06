cask 'liteide' do
  version '33.3,5.9.5'
  sha256 '0d8c86fe72f5583797932664943ad09f4af3785cbfab224a052b01735ee1007c'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version.before_comma}/liteidex#{version.before_comma}.macosx-qt#{version.after_comma}.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: 'ed5ec42ee9567478e224a13ad303ab12c9232a286f44a05dbf7b02c025bec8fe'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
