cask 'renpy' do
  version '7.3.2'
  sha256 '129dd7cce3a1e99982f07b4f4c5571111d52dca9c80f2167badadec045101abf'

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name 'Ren\'Py'
  homepage 'https://www.renpy.org/'

  suite "renpy-#{version}-sdk"
end
