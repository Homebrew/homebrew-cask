cask :v1 => 'nomacs' do
  version '1.0.0'
  sha256 '2ec4bfd6390ab7c4b2a929a1e9d14f46f6f168608bf2aee8da67af797f73a54a'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/nomacs/nomacs-#{version}-x86_64.dmg"
  name 'nomacs'
  homepage 'https://www.nomacs.org/'
  license :gpl

  app 'nomacs.app'
end
