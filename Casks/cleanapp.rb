cask :v1 => 'cleanapp' do
  if MacOS.release <= :leopard
    version '3.4.12'
    sha256 'e6020a82949a55ae1eb5b7e45f736bc8b51c7d5e94503f0e4a88b5f8940ab269'
  elsif MacOS.release <= :lion
    version '4.0.8'
    sha256 'e77359586731e1ae863351846afc9fd34a7b9774625122001c0d92593a340ff1'
  else
    version '5.0.1'
    sha256 '7d306172c00ccc7f11281cb855d845a67e52457bc9b673a4a1690c8c2f1b343b'
  end

  url "http://download.syniumsoftware.com/CleanApp/CleanApp%20#{version}.dmg"
  name 'CleanApp'
  homepage 'http://www.syniumsoftware.com/cleanapp'
  license :commercial
  tags :vendor => 'Synium Software'

  app 'CleanApp.app'
end
