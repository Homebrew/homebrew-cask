cask 'prime95' do
  version '28.9'
  sha256 'c8e58f032dbbf0402d97ea81272153faeae61d6ef4461c1f88c99ecbf3fdcc32'

  url 'http://www.mersenne.org/ftp_root/gimps/p95v289.MacOSX.zip'
  name 'Prime95'
  homepage 'http://www.mersenne.org/download/'
  license :other

  app 'Prime95.app'
end
