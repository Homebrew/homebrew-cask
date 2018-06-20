cask 'exo' do
    version '0.10.0a4'
    sha256 '30943239ce174dea5399ae0a192617b44b287c0fb874b27d4bf55267d82095cd'
  
    url "https://github.com/exoscale/egoscale/releases/download/v#{version}/egoscale_#{version}_darwin_amd64.tar.gz"
    name 'EXO'
    homepage 'https://github.com/exoscale/egoscale/tree/master/cmd/exo'
  
    binary "exo"
  end
