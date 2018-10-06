cask 'rationalplan-viewer' do
  version '4.16.7500'
  sha256 'bef88b3b183c5c9a3120f154996139f11ca3f279b1a428218483306d3905d723'

  url "https://www.rationalplan.com/download/RationalPlan-Viewer-#{version}.dmg"
  name 'RationalPlan Viewer'
  homepage 'https://www.rationalplan.com/on-premise/'

  app 'RationalPlan-Viewer.app'
end
