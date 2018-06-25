cask 'mcrcon' do
  version '0.0.5'
  sha256 '33fc0f581d6e35f9b78a203e918b129d11df9e1eded557f3a2d64151ee513313'

  url "https://downloads.sourceforge.net/mcrcon/#{version}/mcrcon-#{version}-bin-osx-64bit.zip"
  appcast 'https://sourceforge.net/projects/mcrcon/rss'
  name 'mcrcon'
  homepage 'https://sourceforge.net/projects/mcrcon/'

  binary 'mcrcon'
end
