class Macaw < Cask
  version '1.0.6'
  sha256 '20b380d29a155aec27827771c0c6d099a2bd8ee4b8aaa8c3ba9a291248ecdd3e'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml'
  homepage 'http://macaw.co/'

  link 'Macaw.app'
end
