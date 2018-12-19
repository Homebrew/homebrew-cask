cask 'decibel' do
  version '1.3.5,016'
  sha256 'b355c1589b8baa7e9591cc8b6945ddaed4d40b15577326c58495374cf64c0aa8'

  # s3.amazonaws.com/feisty-dog/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/feisty-dog/versions/binaries/000/000/#{version.after_comma}/Decibel-#{version.before_comma}.zip"
  appcast 'https://www.feisty-dog.com/panel/updates/Decibel'
  name 'Decibel'
  homepage 'https://www.feisty-dog.com/decibel/'

  app 'Decibel.app'
end
