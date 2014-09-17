class Minbox < Cask
  version :latest
  sha256 :no_check

  url 'https://minbox-public.s3.amazonaws.com/osx/Minbox.zip'
  appcast 'https://minbox.com/updates.xml'
  homepage 'https://minbox.com'

  app 'Minbox.app'
end
