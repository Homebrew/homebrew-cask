cask 'ganttproject' do
  version '2.8.8,r2308'
  sha256 '6f6b026207abb3bd5ec1602e1fd762edb77aafcf390a50fd673c5b54862ab02b'

  # github.com/bardsoftware/ganttproject/releases/download was verified as official when first introduced to the cask
  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bardsoftware/ganttproject/releases.atom',
          checkpoint: 'd2915538665b4b10aa5aaa49de208b05e46dea8b81fff5f7dc436945537b9b62'
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz/'

  app 'GanttProject.app'
end
