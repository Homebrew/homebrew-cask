cask 'itrash' do
  version :latest
  sha256 :no_check

  url 'https://www.osxbytes.com/iTrash.dmg?forcedownload'
  name 'iTrash'
  homepage 'https://www.osxbytes.com/itrash.html'

  app 'iTrash.app'
end
