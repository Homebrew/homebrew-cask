cask 'max' do
  version '0.9.1'
  sha256 '722bf714696d3d39329ba98ffddc9f117f8cc6863f71670507cd12f62a5e5f14'

  url "http://files.sbooth.org/Max-#{version}.tar.bz2"
  appcast 'https://sbooth.org/Max/appcast.xml',
          checkpoint: 'da0e3f2c4da860454e69657f5cbdf7b7866a68fa26cd456ae844e535981a4bc6'
  name 'Max'
  homepage 'https://sbooth.org/Max/'

  app "Max-#{version}/Max.app"
end
