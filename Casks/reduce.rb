cask 'reduce' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.flawless.utils.Reduce was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.flawless.utils.Reduce/ReduceApp.zip'
  name 'Reduce'
  homepage 'https://flawlessapp.io/reduce'

  app 'Reduce.app'
end
