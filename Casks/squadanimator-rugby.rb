cask 'squadanimator-rugby' do
  version '1.0.1'
  sha256 'e9db96ef2a1dee2af84329124c9de5ebe86f79667e7a628d4eb98da94d375fc9'

  url "https://www.squadanimator.com/downloads/SquadAnimatorRugbyOSX-#{version}.zip"
  name 'SquadAnimator-Rugby'
  homepage 'https://www.squadanimator.com/'

  app "SquadAnimatorRugby-#{version}.app"
end
