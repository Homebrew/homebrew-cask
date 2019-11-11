cask 'checkra1n' do
  version '0.9.2'
  sha256 '0c010ab83414d016d2202f3f67de07d6b62459bc66f841c44f53a9f1a5965b17'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
