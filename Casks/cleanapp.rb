cask 'cleanapp' do
  if MacOS.release <= :leopard
    version '3.4.12'
    sha256 'e6020a82949a55ae1eb5b7e45f736bc8b51c7d5e94503f0e4a88b5f8940ab269'
  elsif MacOS.release <= :lion
    version '4.0.8'
    sha256 'e77359586731e1ae863351846afc9fd34a7b9774625122001c0d92593a340ff1'
  else
    version '5.0.2'
    sha256 'fb2fc773a51567ff0b002724ae692671572a60ea5d305467551fe6cf01a6d3a2'
  end

  url "https://download.syniumsoftware.com/CleanApp/CleanApp%20#{version}.dmg"
  name 'Synium Software CleanApp'
  homepage 'http://www.syniumsoftware.com/cleanapp'
  license :commercial

  app 'CleanApp.app'
end
