cask 'rapidminer-studio' do
  version ':latest'
  sha256 'b04cc77028bac7822d5aeead687a4cf1cca146cebc220cb4d55803aa86489d61'

  url 'http://go.rapidminer.com/rm-studio-download-mac'
  name 'RapidMiner Studio'
  homepage 'https://rapidminer.com/products/studio/'
  license :unknown

  app 'RapidMiner Studio.app'
end
