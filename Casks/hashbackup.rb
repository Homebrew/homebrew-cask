cask 'hashbackup' do
  version '2194'
  sha256 '3c8cc0bcf65ba3f5580d54fa2836d0f3895fc845e72db33d63e9975a62414da2'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
