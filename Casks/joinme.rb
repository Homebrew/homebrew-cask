cask :v1 => 'joinme' do
  version :latest
  sha256 :no_check

  url 'https://secure.join.me/Download.aspx?installer=mac&webdownload=true'
  homepage 'https://join.me/'
  license :unknown

  app 'join.me.app'
end
