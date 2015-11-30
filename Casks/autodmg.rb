cask :v1 => 'autodmg' do
  version '1.5.4'
  sha256 'f7ffd098e5d96a7ffaccf6bcacfd10cf99991882d93f42267859d94f38578dab'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'
  license :apache

  app 'AutoDMG.app'
end
