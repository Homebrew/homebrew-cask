cask 'aware' do
  version '1.0.3'
  sha256 '65dcaef6735c649e2b6a406f48583609ca9d66e7680ca69eb61871502613dec3'

  # github.com/josh/Aware was verified as official when first introduced to the cask
  url "https://github.com/josh/Aware/releases/download/v#{version}/Aware.zip"
  appcast 'https://github.com/josh/Aware/releases.atom',
          checkpoint: 'a1a9d088cbf5438c498d9fce094a89ad98ba3e1e7e0f80440fdf6f088b6f21aa'
  name 'Aware'
  homepage 'http://awaremac.com/'

  app 'Aware.app'
end
