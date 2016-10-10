cask 'lumen' do
  version '1.0.0'
  sha256 'd5ad8dea570063860086df09802cde876070ec7b28694f292e0aa3ce333a1ef9'

  url "https://github.com/anishathalye/lumen/releases/download/v#{version}/Lumen.zip"
  appcast 'https://github.com/anishathalye/lumen/releases.atom',
          checkpoint: '44252a0c7faf5ca49ff4657a159b1081e996a04d32868ec142b654c1831a1ac4'
  name 'Lumen'
  homepage 'https://github.com/anishathalye/lumen'

  app 'Lumen.app'
end
