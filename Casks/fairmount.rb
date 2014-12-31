cask :v1 => 'fairmount' do
  version '1.1.3'
  sha256 '0a775f48595ce0c9d0eead76b6d50ab190815cd4ce0e80017f318226e00a5c0e'

  url "https://github.com/downloads/pmetzger/Fairmount/Fairmount-#{version}.dmg"
  appcast 'http://www.example.com/sparkle/fairmount/checkupdate.php',
          :sha256 => '3587cb776ce0e4e8237f215800b7dffba0f25865cb84550e87ea8bbac838c423'
  homepage 'https://github.com/BoxOfSnoo/Fairmount'
  license :oss

  app 'Fairmount.app'
end
