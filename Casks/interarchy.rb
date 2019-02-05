cask 'interarchy' do
  version '10.0.7'
  sha256 'c1f8fbb9add4d134123d72b80d1d04540d38157f7c51478cb9efb0e88138c090'

  url "https://download.interarchy.com/Interarchy_#{version}.zip"
  appcast 'https://interarchy.com/'
  name 'Interarchy'
  homepage 'https://interarchy.com/'

  app 'Interarchy.app'
end
