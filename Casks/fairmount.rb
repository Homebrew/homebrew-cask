class Fairmount < Cask
  version '1.1.3'
  sha256 '0a775f48595ce0c9d0eead76b6d50ab190815cd4ce0e80017f318226e00a5c0e'
  
  url 'https://github.com/downloads/pmetzger/Fairmount/Fairmount-1.1.3.dmg'
  appcast 'http://www.example.com/sparkle/fairmount/checkupdate.php'
  homepage 'https://github.com/BoxOfSnoo/Fairmount'

  link 'Fairmount.app'
end
