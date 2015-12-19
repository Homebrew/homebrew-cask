cask 'noobproof' do
  version '1.5'
  sha256 '6e74a5aec8e9cf9102c160019990e90ae46486358959fa0d22517b4171f8209a'

  url "http://www.hanynet.com/noobproof-#{version}.zip"
  name 'NoobProof'
  homepage 'http://www.hanynet.com/noobproof/'
  license :oss

  app 'NoobProof.app'
end
