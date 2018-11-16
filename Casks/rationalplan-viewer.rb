cask 'rationalplan-viewer' do
  version '5.0.7699'
  sha256 '94143eb7bf08a87a2c1cf4b16eb8847acb7616dd43b28825753861a8d3aa7c50'

  url "https://www.rationalplan.com/download/RationalPlan-Viewer-#{version}.dmg"
  name 'RationalPlan Viewer'
  homepage 'https://www.rationalplan.com/on-premise/'

  app 'RationalPlan-Viewer.app'
end
