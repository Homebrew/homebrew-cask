cask 'renpy' do
  version '6.99.12.4'
  sha256 '51c89ab4b13bbe32bf6200b21255c6c8995a71ab3573891c004879a55f2becb0'

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name 'Ren\'Py'
  homepage 'https://www.renpy.org/'

  suite "renpy-#{version}-sdk"
end
