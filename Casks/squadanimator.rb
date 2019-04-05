cask 'squadanimator' do
  version '1.0.0'
  sha256 '751d8dd3d5113c2199d27c4de2df04914f3672a405ac92d4938f121972633ebd'

  url "https://www.squadanimator.com/downloads/SquadAnimatorOSX-#{version}.zip"
  name 'SquadAnimator'
  homepage 'https://www.squadanimator.com/'

  app 'SquadAnimator.app'
end
