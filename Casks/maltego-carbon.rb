cask :v1 => 'maltego-carbon' do
  version '3.5.0.5520'
  sha256 '2d688442c58b7d18702dbbc6dbe3ff9dc5c1a10dd6ee3347735f760f65ffe380'

  url "https://www.paterva.com/malv#{version.sub(%r{^(\d+)\.(\d+)\..*},'\1\2')}/commercial/Maltego.v#{version}.dmg"
  name 'Maltego Carbon'
  homepage 'https://www.paterva.com/web6/products/maltego.php'
  license :closed
  tags :vendor => 'Paterva'

  app "Maltego Carbon v#{version.sub(%r{\.\d+$},'')}.app"
end
