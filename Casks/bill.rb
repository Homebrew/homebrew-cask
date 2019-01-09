cask 'bill' do
  version '2.6'
  sha256 '7400469acf2fc9675433a45d61e13f562de47c17aad0b299c0b92eb6f9107d64'

  # myownapp.com was verified as official when first introduced to the cask
  url "https://myownapp.com/downloads/Bill#{version.major}.zip"
  appcast 'https://sparkle.moapp.software/bill.xml'
  name 'Bill'
  homepage 'https://billtheapp.com/'

  app "Bill #{version.major}.app"
end
