cask 'medis' do
  version '0.2.0'
  sha256 'b15c17f2da991ee2c79aa6ae2be156d944400b8d12f760d4a83ecdabb9413cc4'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/luin/medis/releases/download/v#{version}/Medis.for.OS.X.zip"
  appcast 'https://github.com/luin/medis/releases.atom',
          :sha256 => '7a7879837d68b67ab464837bed94b4eb68a71be82b497b33daeb564f00f5a8bb'
  name 'Medis'
  homepage 'http://getmedis.com'
  license :mit

  app 'Medis.app'
end
