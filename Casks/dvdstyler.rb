cask :v1 => 'dvdstyler' do
  version '2.6'
  sha256 'fbb26aeb2ee50890b4a192d06d16ddc8a98a8465aa4eeff75d16fdc4de375ed6'

  url "https://downloads.sourceforge.net/sourceforge/dvdstyler/DVDStyler-#{version}-MacOSX.zip"
  homepage 'http://dvdstyler.org'
  license :oss

  app 'DVDStyler.app'
end
