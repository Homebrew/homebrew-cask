cask 'renpy' do
  version '7.0.0'
  sha256 '90cbc8e79c76cafc929a101aeb5b85d47068f47d3e57ad8943e42e23ecb50fdd'

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name 'Ren\'Py'
  homepage 'https://www.renpy.org/'

  suite "renpy-#{version}-sdk"
end
