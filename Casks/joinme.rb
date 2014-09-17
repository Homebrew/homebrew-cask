class Joinme < Cask
  version :latest
  sha256 :no_check

  url 'https://secure.join.me/Download.aspx?installer=mac&webdownload=true'
  homepage 'https://join.me/'

  app 'join.me.app'
end
