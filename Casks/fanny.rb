cask 'fanny' do
  version '1.0.1'
  sha256 'faeea76bca6a599be99457a0ecbb9ff406f30f893c2be81d9d93208f485546d3'

  url 'http://fannywidget.com/FannyWidget.zip'
  name 'FannyWidget'
  homepage 'http://fannywidget.com/'

  app "Fanny #{version}/fanny.app"
end
