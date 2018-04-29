cask 'deepmind' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/cdn.mymcloud.xyz/behringer was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/cdn.mymcloud.xyz/behringer/application/DeepMindAppMacOS.app.zip'
  name 'Behringer Deepmind'
  homepage 'https://www.musictri.be/brand/behringer/home'

  app 'DeepMind12.app'
end
