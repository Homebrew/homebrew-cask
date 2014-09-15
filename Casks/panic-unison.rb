class PanicUnison < Cask
  version '2.1.10'
  sha256 'd7b15d7726dc892caa72a7476219ed3d06e86df704757670bb3236a82bdde5dc'

  url 'http://download.panic.com/Unison/Unison%202.1.10.zip'
  appcast 'http://www.panic.com/updates/update.php'
  homepage 'http://panic.com/unison/'

  app 'Unison.app'
end
