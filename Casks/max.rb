cask :v1 => 'max' do
  version '0.9.1'
  sha256 '722bf714696d3d39329ba98ffddc9f117f8cc6863f71670507cd12f62a5e5f14'

  url "http://files.sbooth.org/Max-#{version}.tar.bz2"
  appcast 'http://sbooth.org/Max/appcast.xml',
          :sha256 => 'd390d6c0b308d5957faf57a05b90960ab602101adb9b80bd61f5948663d6e892'
  homepage 'http://sbooth.org/Max/'
  license :unknown    # todo: improve this machine-generated value

  app "Max-#{version}/Max.app"
end
