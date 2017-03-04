cask 'logicsniffer' do
  version '0.9.7.2'
  sha256 'fa38ea4d3a5a6dac2cddd66c860e75e60b6d4162e81e1c32d7adabc17056c99a'

  url "https://www.lxtreme.nl/ols/ols-#{version}-full.dmg"
  name 'Logic Sniffer'
  homepage 'https://www.lxtreme.nl/ols/'

  app 'LogicSniffer.app'
end
