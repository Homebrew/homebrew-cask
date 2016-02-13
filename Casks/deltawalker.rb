cask 'deltawalker' do
  version '2.1.2'
  sha256 '4ce4f47347df1c475fd631b52c246b1486aa92645fd6345acd8941d9f186afb0'

  # amazonaws.com/deltawalker was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}_64.dmg"
  name 'DeltaWalker'
  homepage 'http://www.deltawalker.com/'
  license :commercial

  depends_on macos: '>= :tiger'

  app 'DeltaWalker.app'
end
