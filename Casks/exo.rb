cask 'exo' do
    version '0.10.0a4'
    sha256 '07cf006287e5164f80d8137484f4cf1bc39b6658ce697d1ede2d525cb994a3fe'
  
    url "https://github.com/exoscale/egoscale/releases/download/v#{version}/egoscale_#{version}_darwin_amd64.tar.gz"
    name 'EXO'
    homepage 'https://github.com/exoscale/egoscale/tree/master/cmd/exo'
  
    binary "exo"
  end
