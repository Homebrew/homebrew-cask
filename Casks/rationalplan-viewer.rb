cask 'rationalplan-viewer' do
  version '4.13.0'
  sha256 '5c0796a4c7d20b644cd0fb6dc6bfe7b81bd5d261da1d72ba08c6370072ef42fa'

  url "http://www.rationalplan.com/download/RationalPlan-Viewer-#{version}.dmg"
  name 'RationalPlan Viewer'
  homepage 'http://www.rationalplan.com/viewer-project-management-software.php'
  license :freemium

  app 'RationalPlan-Viewer.app'
end
