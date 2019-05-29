cask 'aware' do
  version '1.0.3'
  sha256 '65dcaef6735c649e2b6a406f48583609ca9d66e7680ca69eb61871502613dec3'

  # github.com/josh/Aware was verified as official when first introduced to the cask
  url "https://github.com/josh/Aware/releases/download/v#{version}/Aware.zip"
  appcast 'https://github.com/josh/Aware/releases.atom'
  name 'Aware'
  homepage 'https://awaremac.com/'

  app 'Aware.app'
end
