cask 'cleanapp' do
  if MacOS.release <= :leopard
    version '3.4.12'
    sha256 'e6020a82949a55ae1eb5b7e45f736bc8b51c7d5e94503f0e4a88b5f8940ab269'
  elsif MacOS.release <= :lion
    version '4.0.8'
    sha256 'e77359586731e1ae863351846afc9fd34a7b9774625122001c0d92593a340ff1'
  else
    version '5.1'
    sha256 'f605164571de8ef7fe08185f6c20e618f5ed6263bbea8b42dd527ac179c9f523'
  end

  url "https://download.syniumsoftware.com/CleanApp/CleanApp%20#{version}.dmg"
  name 'Synium Software CleanApp'
  homepage 'http://www.syniumsoftware.com/cleanapp'
  license :commercial

  app 'CleanApp.app'
end
