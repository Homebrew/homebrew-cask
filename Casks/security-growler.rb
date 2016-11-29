cask 'security-growler' do
  version '2.2'
  sha256 '6e0a7a36745e1003177db4d419ec4502fb4a1ccbbf6766ba7ea8a69cad863593'

  url "https://github.com/pirate/security-growler/releases/download/v#{version}/Security.Growler.app.zip"
  appcast 'https://github.com/pirate/security-growler/releases.atom',
          checkpoint: 'f871b12f5e054e01460055a896e6fce7117c2c647b5cfef8acd7a1ae39ec25be'
  name 'Security Growler'
  homepage 'https://github.com/pirate/security-growler'

  depends_on macos: '>= :mountain_lion'

  app 'Security Growler.app'
end
