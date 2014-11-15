cask :v1 => 'ibackup' do
  version '7.5'
  sha256 'faa69e95f62dfeb04a6ede20e7b856d43645f1bd07aede743c5d364d2845aabf'

  url "http://www.grapefruit.ch/iBackup/versions/iBackup%207.x/iBackup%20#{version}.dmg"
  homepage 'http://www.grapefruit.ch/iBackup'
  license :unknown

  app 'iBackup.app'
end
