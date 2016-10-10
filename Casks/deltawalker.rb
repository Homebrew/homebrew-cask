cask 'deltawalker' do
  version '2.3.0'
  sha256 '567b17366dbc33518a6a914e140699485a37b840bf99acf8f7e5b1a86c83d664'

  # amazonaws.com/deltawalker was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}_64.dmg"
  name 'DeltaWalker'
  homepage 'http://www.deltawalker.com/'

  depends_on macos: '>= :tiger'

  app 'DeltaWalker.app'
end
