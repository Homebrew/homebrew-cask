cask 'cevelop' do
  version '1.10.0-201807191318'
  sha256 '41063f21af93638deb2f950631d666b447f375dc144e8ce0e948e925fb19452c'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
