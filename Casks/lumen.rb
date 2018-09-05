cask 'lumen' do
  version '1.1.0'
  sha256 '7a612f04a960939b4b3dc057f2322153a1345afc25d82f96023ee427073d409e'

  url "https://github.com/anishathalye/lumen/releases/download/v#{version}/Lumen.zip"
  appcast 'https://github.com/anishathalye/lumen/releases.atom'
  name 'Lumen'
  homepage 'https://github.com/anishathalye/lumen'

  app 'Lumen.app'
end
