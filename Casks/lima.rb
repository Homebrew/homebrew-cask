cask 'lima' do
  version '1.2.1'
  sha256 '6863bdadb85ebfeb96d52d9b695329a0b4e907ac82220ed448be2ce972ec2739'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
