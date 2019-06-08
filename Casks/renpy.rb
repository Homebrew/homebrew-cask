cask 'renpy' do
  version '7.2.2'
  sha256 'ecea56c40b8a2ea96c533a689e3fffb16c184677835bc1e5e42f0ef5657ce392'

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name 'Ren\'Py'
  homepage 'https://www.renpy.org/'

  suite "renpy-#{version}-sdk"
end
