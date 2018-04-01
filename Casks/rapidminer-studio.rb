cask 'rapidminer-studio' do
  version :latest
  sha256 :no_check

  url 'http://go.rapidminer.com/rm-studio-download-mac'
  name 'RapidMiner Studio'
  homepage 'https://rapidminer.com/products/studio/'

  app 'RapidMiner Studio.app'
end
