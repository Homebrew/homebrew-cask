cask 'hashbackup' do
  version '2197'
  sha256 'e14d2461596cd02bb20e2b061a823b93d358123cb1e7e5e1312da7ef979a850c'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
