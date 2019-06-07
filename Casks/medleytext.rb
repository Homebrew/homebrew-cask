cask 'medleytext' do
  version :latest
  sha256 :no_check

  # medleytext.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://medleytext.s3.amazonaws.com/releases/medley-latest.dmg'
  name 'MedleyText'
  homepage 'https://medleytext.net/'

  app 'MedleyText.app'
end
