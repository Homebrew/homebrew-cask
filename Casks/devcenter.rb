cask 'devcenter' do
  version '1.6.0'
  sha256 '2f803cdc700e3dd06d5bbad8d5c3039f6aa9a793baee42fc043439b495832ac3'

  url "https://downloads.datastax.com/devcenter/DevCenter-#{version}-macosx-x86_64.tar.gz"
  name 'DataStax DevCenter'
  homepage 'https://www.datastax.com/products/datastax-devcenter-and-development-tools'

  suite 'DevCenter'
end
