cask 'itrash' do
  if MacOS.version <= :leopard
    version '1.5.5'
    sha256 'e45ba193c93e3ddf7ac439d035a82f0e9fde5630a308a490d456f0eef6277e6b'

    url "http://www.osxbytes.com/iTrash#{version.no_dots}.dmg"
  elsif MacOS.version <= :mavericks
    version '2.2.1'
    sha256 '58255c7bbc09d9d37db9021a772fc436bd16eab64e89cdccfefff4e360122e7d'

    url "http://www.osxbytes.com/iTrash#{version.no_dots}.dmg"
  else
    version :latest
    sha256 :no_check

    url 'http://www.osxbytes.com/iTrash.dmg'
  end

  name 'iTrash'
  homepage 'http://www.osxbytes.com/itrash.html'

  app 'iTrash.app'
end
