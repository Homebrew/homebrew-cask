cask :v1 => 'autodmg' do
  version '1.5.1'
  sha256 '574bbc8811ed39bf6751c76cba15cac789061f0032aadf205a906334e8970109'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  homepage 'https://github.com/MagerValp/AutoDMG'
  license :apache

  app 'AutoDMG.app'
end
