cask 'ganttproject' do
  version '2.8.6,r2233'
  sha256 'ec7f11f057329ebeb9545103b7821871d2737caed4dcfdf248adc4b3f0f35946'

  # github.com/bardsoftware/ganttproject/releases/download was verified as official when first introduced to the cask
  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bardsoftware/ganttproject/releases.atom',
          checkpoint: '4d1a804b315baa3a7e690aa4933fe7462d551659b5bc0f23bfc2ba6657d0101c'
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz/'

  app 'GanttProject.app'
end
