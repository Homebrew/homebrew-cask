cask 'amm' do
  version '0.4.3'
  sha256 '181410cc890f9f13fb7500fcda3b51be205f150ab6ee8706340429f07d750510'

  url "https://github.com/15cm/AMM/releases/download/v#{version}/AMM_v#{version}.dmg"
  appcast 'https://github.com/15cm/AMM/releases.atom',
          checkpoint: 'bf9903a6b584c3024b65045d8633ca4bfa112177af58af044f52f6fc263f04bd'
  name 'AMM'
  homepage 'https://github.com/15cm/AMM'

  app 'AMM.app'
end
