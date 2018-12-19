cask 'middleclick' do
  version '1.0'
  sha256 '74533304ec68f8e6c716a4b7c3ad6ed34d985b88c66eee7e43cce22883dee08e'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/cl3m/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  appcast 'https://github.com/cl3m/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://rouge41.com/labs/'

  app 'MiddleClick.app'
end
