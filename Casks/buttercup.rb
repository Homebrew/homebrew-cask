cask 'buttercup' do
  version '0.22.0'
  sha256 'e7944cf5eb785c5032e318540d74b09a782d345fb3239df5c1bb9e920709ea02'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '40327d93aac63afd3204f645d970668f309ca375086d4cd8488d2f9ee948ef26'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
