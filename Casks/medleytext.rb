cask 'medleytext' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/medleytext was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/medleytext/releases/medley-latest.dmg'
  name 'MedleyText'
  homepage 'https://medleytext.net/'

  app 'MedleyText.app'
end
