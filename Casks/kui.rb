cask 'kui' do
  version '0.1.2'
  sha256 '124d713f59ab8d065040106781dd9b9f2163c849e6cbc0204a91e59c117bd0f4'

  url "https://github.com/kui-shell/plugin-kubeui/releases/download/#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/kui-shell/plugin-kubeui/releases.atom'
  name 'Kui'
  homepage 'https://github.com/IBM/kui'

  app 'Kui-darwin-x64/Kui.app'
end
