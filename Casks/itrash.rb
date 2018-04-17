cask 'itrash' do
  if MacOS.version <= :mavericks
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
