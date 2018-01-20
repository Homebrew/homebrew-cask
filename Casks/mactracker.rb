cask 'mactracker' do
  version '7.7'
  sha256 '10e21078fea80f3d127beb322de2d84e4b32830bb7e584f78593617b0bb88438'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '1c5df6b4fae6b88cd7c0c1647fe4f36b57a81acaba7783edb774c8dce9a8dbb9'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
