cask 'rar' do
  version '5.4.0'
  sha256 '09a14f40718c68fc1c24b30acb55d0f2f90f3e13b372c48b6ef1e789d748b754'

  url "http://www.rarlab.com/rar/rarosx-#{version}.tar.gz"
  name 'RAR Archiver'
  homepage 'http://www.rarlab.com/'

  binary 'rar/rar'
  binary 'rar/unrar'
end
