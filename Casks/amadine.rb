cask 'amadine' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/Amadine.dmg'
  name 'Amadine'
  homepage 'https://amadine.com/'

  app 'Amadine.app'
end
