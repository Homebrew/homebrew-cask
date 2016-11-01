cask 'aware' do
  version '1.0.3'
  sha256 '65dcaef6735c649e2b6a406f48583609ca9d66e7680ca69eb61871502613dec3'

  # github.com/josh/Aware was verified as official when first introduced to the cask
  url "https://github.com/josh/Aware/releases/download/v#{version}/Aware.zip"
  appcast 'https://github.com/josh/Aware/releases.atom',
          checkpoint: '69d1a1fc0074d3e30dd3cb919be7a930907e690fdf733eb22d4c5bb4b9555986'
  name 'Aware'
  homepage 'http://awaremac.com'

  app 'Aware.app'
end
