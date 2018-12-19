cask 'printopia' do
  version '3.0.13'
  sha256 'cac11d0ba2af9d33c7dcb7ecd42812c3ca4845f7f403c9c9d1b8a015829a90e1'

  url "https://www.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  app 'Printopia.app'

  zap trash: '~/Library/Preferences/com.ecamm.printopia.plist'
end
