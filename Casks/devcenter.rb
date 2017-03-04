cask 'devcenter' do
  version '1.6.0'
  sha256 '233b1ac58d509aa3a743b54658d8b35383e653765023278d5688d0dd13253639'

  url "https://downloads.datastax.com/devcenter/DevCenter-#{version}-macosx-x86_64.tar.gz"
  name 'DataStax DevCenter'
  homepage 'https://www.datastax.com/products/datastax-devcenter-and-development-tools'

  suite 'DevCenter'
end
