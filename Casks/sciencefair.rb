cask 'sciencefair' do
  version '1.0.6'
  sha256 '24607fd3b708569f9d72d3db5b555919d1f8fcb2d8a0e3c3700fef20faf48274'

  # github.com/codeforscience/sciencefair was verified as official when first introduced to the cask
  url "https://github.com/codeforscience/sciencefair/releases/download/v#{version}/scienceFair-#{version}.dmg"
  appcast 'https://github.com/codeforscience/sciencefair/releases.atom',
          checkpoint: '03cd606296568d873429c91f1ac2ed99946e3794bfa4e6ce12b25ab1f7b64a9b'
  name 'ScienceFair'
  homepage 'http://sciencefair-app.com/'

  app 'ScienceFair.app'

  zap delete: [
                '~/Library/Logs/sciencefair',
                '~/Library/Saved Application State/org.codeforscience.sciencefair.savedState',
              ],
      trash:  [
                '~/Documents/sciencefair',
                '~/Library/Application Support/sciencefair',
                '~/Library/Preferences/org.codeforscience.sciencefair.helper.plist',
                '~/Library/Preferences/org.codeforscience.sciencefair.plist',
              ]
end
