cask 'autodmg' do
  version '1.5.4'
  sha256 'f7ffd098e5d96a7ffaccf6bcacfd10cf99991882d93f42267859d94f38578dab'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          :sha256 => '43b78b537f3e715f6e0284617dfbe48c7fbedd19ee0e611741797d9acd893f65'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'
  license :apache

  app 'AutoDMG.app'
end
