cask 'reduce' do
  version '1.4,6:1517401022'
  sha256 '3d77d0bad97a24e7832c95aa3cbf0f2b3c476ec0746c01e4d812a74e5860faf5'

  # dl.devmate.com/com.flawless.utils.Reduce was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.flawless.utils.Reduce/#{version.after_comma.before_colon}/#{version.after_colon}/ReduceApp-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.flawless.utils.Reduce.xml'
  name 'Reduce'
  homepage 'https://flawlessapp.io/reduce'

  app 'Reduce.app'
end
