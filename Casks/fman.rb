cask 'fman' do
  version '1.4.4'
  sha256 '21c88f5662bcebd9e6f43250b0271c38e81096f979b55e7089972772f5b60439'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
