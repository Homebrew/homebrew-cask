class Minbox < Cask
  url 'https://minbox-public.s3.amazonaws.com/osx/Minbox.zip'
  appcast 'https://minbox.com/updates.xml'
  homepage 'https://minbox.com'
  version 'latest'
  sha256 :no_check
  link 'Minbox.app'
end
