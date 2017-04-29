cask 'insync' do
  version '1.3.15.36150'
  sha256 '20525affb45cb8b040b0dfdfc9128a0c6dfe37bdd88f8de2f1c4a802dd01b96a'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  app 'Insync.app'
end
