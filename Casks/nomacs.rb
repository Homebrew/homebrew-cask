cask :v1 => 'nomacs' do
  version '1.0.0'
  sha256 '2ec4bfd6390ab7c4b2a929a1e9d14f46f6f168608bf2aee8da67af797f73a54a'

  url "https://downloads.sourceforge.net/nomacs/nomacs-#{version}-x86_64.dmg"
  homepage 'http://www.nomacs.org/'
  license :oss

  app 'nomacs.app'
end
