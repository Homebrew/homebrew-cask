cask 'geneious-prime' do
  version '2019.0.4'
  sha256 '1fe25d0171fa2b3b6bc57ca4680c63bb26d8e78f4f6b21eaaade0f9cfdb78c7f'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
