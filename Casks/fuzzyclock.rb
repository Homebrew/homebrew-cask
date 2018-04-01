cask 'fuzzyclock' do
  version :latest
  sha256 :no_check

  url 'http://mschmidt.me/macOS/FuzzyClock.zip'
  name 'FuzzyClock'
  homepage 'https://mschmidt.me/macos.html'

  app 'FuzzyClock.app'
end
