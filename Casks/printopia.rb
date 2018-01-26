cask 'printopia' do
  version '3.0.4'
  sha256 'a57d6f0ce253b57708a806c8065d29249dffc9679d10a5e8de89a9781c16619c'

  url "https://download.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  app 'Printopia.app'

  zap trash: '~/Library/Preferences/com.ecamm.printopia.plist'
end
