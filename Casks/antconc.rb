cask 'antconc' do
  if MacOS.release <= :snow_leopard
    version '3.4.1'
    sha256 '03c353c059b8c0762b01d9be83f435321f5396cbf203bd8b36c6a56682b6a240'
  else
    version '3.4.3'
    sha256 'c63b9a9fd60a97c8551c6fa2902663568be9cdabee5601a2fe99715f47921421'
  end

  url "http://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.delete('.')}/AntConc.zip"
  name 'AntConc'
  homepage 'http://www.laurenceanthony.net/software/antconc'
  license :gratis

  app 'AntConc.app'
end
