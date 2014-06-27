class Hush < Cask
  version '1.0'
  sha256 'da31f0abd7c531e87c9f171493d318535cb24f1335e7e2b1c0fa68eeed685b2e'

  url 'https://coffitivity.com/hush/files/Hush.dmg.zip'
  homepage 'http://coffitivity.com/hush/'

  nested_container 'Hush.dmg'
  link 'Hush.app'
end
