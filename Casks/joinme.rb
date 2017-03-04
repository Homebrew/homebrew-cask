cask 'joinme' do
  version :latest
  sha256 :no_check

  url 'https://secure.join.me/Download.aspx?installer=mac&webdownload=true'
  name 'join.me'
  homepage 'https://www.join.me/'

  app 'join.me.app'
end
