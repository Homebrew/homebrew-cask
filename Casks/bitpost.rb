cask 'bitpost' do
  version '0.9.8.3'
  sha256 '3145c4cce9d328a5af7330afd93d6ea0ab76fab9793ac67084c04eec07adf2aa'

  url "https://voluntarylabs.org/bitpost/binaries/Bitpost.#{version}.zip"
  appcast 'https://voluntarylabs.org/bitpost/index.html'
  name 'Bitpost'
  homepage 'https://voluntarylabs.org/bitpost/index.html'

  app 'Bitpost.app'
end
