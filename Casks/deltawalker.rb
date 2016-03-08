cask 'deltawalker' do
  version '2.2.1'
  sha256 '3324a140d837899515e3ed1d50b06d5b21831cfd9d18a1e768da396e65d3be68'

  # amazonaws.com/deltawalker was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}_64.dmg"
  name 'DeltaWalker'
  homepage 'http://www.deltawalker.com/'
  license :commercial

  depends_on macos: '>= :tiger'

  app 'DeltaWalker.app'
end
