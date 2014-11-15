cask :v1 => 'geneious' do
  version '7.1.7'
  sha256 '1a3c9ad7349e7676d8be7f85db83cad8a7879d9fa188c19fc94f97eb8683403a'

  url "http://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.gsub('.','_')}.dmg"
  homepage 'http://www.geneious.com/'
  license :unknown

  app 'Geneious.app'
end
