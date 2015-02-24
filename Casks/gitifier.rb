cask :v1 => 'gitifier' do
  version '1.3.1'
  sha256 '59068f250654d0d1588c544f34148bd81a8855b78f868fca8ae49dd3d24d1ee4'

  url "https://github.com/jsuder/Gitifier/releases/download/#{version}/Gitifier-#{version}.zip"
  appcast 'http://sparkle.psionides.eu/feed/gitifier',
          :sha256 => '5bf8682d28e0a59966f8107efbca6be05b60a32252da7288952b35c3fb4e269b'
  name 'Gitifier'
  homepage 'http://psionides.github.io/Gitifier/'
  license :eclipse

  app 'Gitifier.app'
end
