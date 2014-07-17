class Hush < Cask
  version 'latest'
  sha256 :no_check

  url 'https://coffitivity.com/hush/files/Hush.dmg.zip'
  homepage 'http://coffitivity.com/hush/'

  nested_container 'Hush.dmg'
  link 'Hush.app'
end
