cask 'hashbackup' do
  version '2188'
  sha256 'f3b725981a0910fa8b8f173d2e68475aebdbbe7126f7762bb09e1bc01d7b8f5d'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
