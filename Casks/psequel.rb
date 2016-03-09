cask 'psequel' do
  version '1.4.2'
  sha256 '3c9919b67de1f152cd9442c37a7f6a33cad38c268d40c439fd749c65f9461eb7'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com'
  license :closed

  app 'PSequel.app'
end
