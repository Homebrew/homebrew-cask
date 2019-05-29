cask 'itrash' do
  if MacOS.version <= :mavericks
    version '2.2.1'
    sha256 '58255c7bbc09d9d37db9021a772fc436bd16eab64e89cdccfefff4e360122e7d'

    url "https://www.osxbytes.com/iTrash#{version.no_dots}.dmg?forcedownload"
  else
    version :latest
    sha256 :no_check

    url 'https://www.osxbytes.com/iTrash.dmg?forcedownload'
  end

  name 'iTrash'
  homepage 'https://www.osxbytes.com/itrash.html'

  app 'iTrash.app'
end
