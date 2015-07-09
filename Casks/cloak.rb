cask :v1 => 'cloak' do
  version '2.0.11'
  sha256 '8dbebffcfe6db8b20a15ce11231fea248a42281cde73d08b661b1e9861ec7eed'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          :sha256 => 'fcc0e8f7a9de119912cbd409fadd5fb4af28087720ded1b28fbe1a0d1ff28941'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
