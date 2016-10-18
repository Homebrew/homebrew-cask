cask 'liteide' do
  version '30.2'
  sha256 '7f4897029f2fc2671e3461ec7426b634c38b4d152c19d47cc255b0671e45907f'

  # sourceforge.net/liteide was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/liteide/X#{version}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://sourceforge.net/projects/liteide/rss',
          checkpoint: 'c9055a3a1b71a9c59f74e33210a3674ba76282253f1989a1a46cdfa7ed5c5898'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  app 'LiteIDE.app'
end
