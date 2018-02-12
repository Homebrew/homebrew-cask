cask 'printopia' do
  version '3.0.7'
  sha256 'b9614b1efbde5cd73a25e660a9b81c16871905fb97561d37f5cd72568a911366'

  url "https://download.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  app 'Printopia.app'

  zap trash: '~/Library/Preferences/com.ecamm.printopia.plist'
end
