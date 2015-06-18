cask :v1 => 'ganttproject' do
  version '2.7-r1891'
  sha256 '987b0b5b4d342584602efc0425450d372363adcdf5a1b0548a8ffaf2d6d8b20f'

  url "https://dl.ganttproject.biz/ganttproject-#{version.sub(%r{-.*},'')}/ganttproject-#{version}.dmg"
  name 'GanttProject'
  homepage 'http://www.ganttproject.biz'
  license :oss

  app 'GanttProject.app'
end
