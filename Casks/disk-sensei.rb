cask 'disk-sensei' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/cindori/DiskSensei.dmg'
  name 'Disk Sensei'
  homepage 'https://www.cindori.org/software/disksensei/'
  license :commercial

  app 'Disk Sensei.app'
end
