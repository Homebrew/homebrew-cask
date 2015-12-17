cask :v1 => 'disk-sensei' do
  version :latest
  sha256 '3b17d9d02006530a176e51da312d9782825a660305dba874706d7a1462f10288'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/cindori/DiskSensei.dmg'
  name 'Disk Sensei'
  homepage 'https://www.cindori.org/software/disksensei/'
  license :commercial

  app 'Disk Sensei.app'
end
