cask 'decibel' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/feisty-dog/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/feisty-dog/Decibel.zip'
  name 'Decibel'
  homepage 'https://www.feisty-dog.com/decibel/'

  app 'Decibel.app'
end
