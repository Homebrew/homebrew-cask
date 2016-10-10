cask 'disk-sensei' do
  version :latest
  sha256 :no_check

  # amazonaws.com/cindori was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/cindori/DiskSensei.dmg'
  name 'Disk Sensei'
  homepage 'https://www.cindori.org/software/disksensei/'

  app 'Disk Sensei.app'
end
