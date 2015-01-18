cask :v1 => 'ganttproject' do
  version '2.6.5-r1638'
  sha256 '8cee2c4575389bd5961e1e105d0a4fdca37969cc57e049456a885f5fdbcee9ec'

  # googlecode.com is the official download host per the vendor homepage
  url "https://ganttproject.googlecode.com/files/ganttproject-#{version}.dmg"
  homepage 'http://www.ganttproject.biz'
  license :oss

  app "GanttProject #{version.sub(%r{-.*},'')}.app"
end
