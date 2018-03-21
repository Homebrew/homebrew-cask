cask 'mcrcon' do
  version '0.0.5'
  sha256 '33fc0f581d6e35f9b78a203e918b129d11df9e1eded557f3a2d64151ee513313'

  url "https://downloads.sourceforge.net/mcrcon/#{version}/mcrcon-#{version}-bin-osx-64bit.zip"
  appcast 'https://sourceforge.net/projects/mcrcon/rss',
          checkpoint: '361ae7ca41d74196a2a26ce31b0d1afa22f841e1a6f0f93d8490638db8e20a33'
  name 'mcrcon'
  homepage 'https://sourceforge.net/projects/mcrcon/'

  binary 'mcrcon'
end
