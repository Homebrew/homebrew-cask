cask 'hashbackup' do
  version '2189'
  sha256 '5b52aa64dfbb50ab79247dbdf45816fdc6a072169e9334192154a648388758c0'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
