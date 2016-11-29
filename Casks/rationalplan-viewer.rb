cask 'rationalplan-viewer' do
  version '4.14.7306'
  sha256 '1e8926757687e3ca1e15241bfb1aacc82e07e2167c9c1cc0a5416a71585c3d3c'

  url "http://www.rationalplan.com/download/RationalPlan-Viewer-#{version}.dmg"
  name 'RationalPlan Viewer'
  homepage 'http://www.rationalplan.com/viewer-project-management-software.php'

  app 'RationalPlan-Viewer.app'
end
