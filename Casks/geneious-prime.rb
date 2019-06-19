cask 'geneious-prime' do
  version '2019.2.1'
  sha256 'c8c9690e6722be830705320bd2361686965cdc80db273d6eda8453ca751adb75'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast 'https://www.geneious.com/download/'
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
