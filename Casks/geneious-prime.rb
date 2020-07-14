cask 'geneious-prime' do
  version '2020.2.1'
  sha256 'e7c4c5384bfe346d080381a3eff5ad2e3e853713014e4f8605adb8b9ffe0c255'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast 'https://www.geneious.com/download/'
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
