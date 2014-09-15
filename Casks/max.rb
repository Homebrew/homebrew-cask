class Max < Cask
  version '0.9.1'
  sha256 '722bf714696d3d39329ba98ffddc9f117f8cc6863f71670507cd12f62a5e5f14'

  url "http://files.sbooth.org/Max-#{version}.tar.bz2"
  appcast 'http://sbooth.org/Max/appcast.xml'
  homepage 'http://sbooth.org/Max/'

  app "Max-#{version}/Max.app"
end
