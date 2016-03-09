cask 'iordning' do
  version '6.0.43'
  sha256 '965818c8e43f51826edef0e9c4bc8a083d6b698b2fae2f63a1de2407f02c59a3'

  url "https://www.aderstedtsoftware.com/downloads/iOrdning#{version.to_i}.zip"
  name 'iOrdning'
  name 'Economacs'
  homepage 'https://aderstedtsoftware.com/'
  license :commercial

  app 'iOrdning.app'
end
