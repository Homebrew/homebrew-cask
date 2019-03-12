cask 'kaiosrt' do
  version :latest
  sha256 :no_check

  url 'https://developer.kaiostech.com/simulator/mac'
  name 'KaiOS Simulator'
  homepage 'https://developer.kaiostech.com/simulator'

  app 'Kaiosrt.app'
end
