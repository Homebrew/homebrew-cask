cask 'maltego' do
  version '4.0.0.8846'
  sha256 '1fd90f884f40a6b2a7530b8e081b6b9f7d21cdaf53a52a6dc800034a85af84be'

  url "https://www.paterva.com/malv#{version.sub(%r{^(\d+)\..*}, '\1\2')}/classic/Maltego.v#{version}.dmg"
  name 'Paterva Maltego'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients/maltego.php'
  license :closed

  app "Maltego Classic v#{version.sub(%r{\.\d+$}, '')}.app"
end
