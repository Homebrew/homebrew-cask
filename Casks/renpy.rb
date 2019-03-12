cask 'renpy' do
  version '7.1.3'
  sha256 'ce5f95f825658d088a0612bb9a28aa5a694f7264b1f25ebde4ebd4cbcc94c116'

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name 'Ren\'Py'
  homepage 'https://www.renpy.org/'

  suite "renpy-#{version}-sdk"
end
