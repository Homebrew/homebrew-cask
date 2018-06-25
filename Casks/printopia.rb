cask 'printopia' do
  version '3.0.10'
  sha256 '9acad71b496fc93f2095ceab9f0eece879710aee783541c39450d3303859aa59'

  url "https://www.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  app 'Printopia.app'

  zap trash: '~/Library/Preferences/com.ecamm.printopia.plist'
end
