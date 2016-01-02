cask 'joinme' do
  version :latest
  sha256 :no_check

  url 'https://secure.join.me/Download.aspx?installer=mac&webdownload=true'
  name 'join.me'
  homepage 'https://join.me/'
  license :gratis

  app 'join.me.app'
end
