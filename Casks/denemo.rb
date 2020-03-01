cask 'denemo' do
  version '2.3.0'
  sha256 '7e2110737f216311df6e2a41e8a4060a8d9776aac2310ea94c582faa076593ae'

  # ftp.gnu.org/gnu/denemo was verified as official when first introduced to the cask
  url "https://ftp.gnu.org/gnu/denemo/denemo-#{version}.tar.gz"
  appcast 'https://ftp.gnu.org/gnu/denemo/?C=M;O=D'
  name 'Denemo'
  homepage 'http://denemo.org/'

  app 'Denemo.app'
end
