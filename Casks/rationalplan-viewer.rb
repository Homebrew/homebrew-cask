cask 'rationalplan-viewer' do
  version '4.15.7389'
  sha256 '73945254e36c5bd7839421a7f02962db1cfe033b6a0a3962f2c7be3c3929537d'

  url "http://www.rationalplan.com/download/RationalPlan-Viewer-#{version}.dmg"
  name 'RationalPlan Viewer'
  homepage 'https://www.rationalplan.com/on-premise/'

  app 'RationalPlan-Viewer.app'
end
