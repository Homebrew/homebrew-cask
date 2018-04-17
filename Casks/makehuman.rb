cask 'makehuman' do
  version '1.1.1'
  sha256 '0f5626b1878f8f4233be431917e740806b141522f9f4b3da7809e8e7798ee2d8'

  # tuxfamily.org/makehuman was verified as official when first introduced to the cask
  url "https://download.tuxfamily.org/makehuman/releases/#{version}/makehuman-#{version}-osx.dmg"
  appcast 'https://download.tuxfamily.org/makehuman/releases/',
          checkpoint: '75064672d3c4afcf777057fba4176be9c6ccd36c15f52ca4e736abd273c24068'
  name 'MakeHuman'
  homepage 'http://www.makehuman.org/'

  app 'MakeHuman.app'
end
