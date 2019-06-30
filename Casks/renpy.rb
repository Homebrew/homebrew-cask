cask 'renpy' do
  version '7.3.0'
  sha256 'f40b0269ea614ef0292c974b9e03a05c5c9d71a10f31693c2e037921f815cb50'

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name 'Ren\'Py'
  homepage 'https://www.renpy.org/'

  suite "renpy-#{version}-sdk"
end
