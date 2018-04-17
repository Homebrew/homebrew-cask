cask 'binary-ninja' do
  version :latest
  sha256 :no_check

  url 'https://cdn.binary.ninja/installers/BinaryNinja-demo.dmg'
  name 'Binary Ninja'
  homepage 'https://binary.ninja/'

  app 'Binary Ninja.app'
end
