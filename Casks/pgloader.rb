cask 'pgloader' do
  version '3.2.0'
  sha256 '5054434145931fa26c416ae00e259e3741c247ac6dc9c8452bf9b0d51deeacc9'

  url "http://pgloader.io/files/pgloader-#{version}.pkg"
  name 'Pgloader'
  homepage 'http://pgloader.io'
  license :oss

  pkg "pgloader-#{version}.pkg"

  uninstall pkgutil: 'org.tapoueh.pgloader'
end
