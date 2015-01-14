cask :v1 => 'soulseek' do
  version '2014-11-30'
  sha256 '64ddff73a6744a316f1159e7b6267a2837c82091d6045265dd6807eaae5e6124'

  url "http://www.soulseekqt.net/SoulseekQt/Mac/SoulseekQt-#{version}.dmg"
  name 'Soulseek'
  homepage 'http://www.soulseekqt.net/'
  license :gratis

  app "SoulseekQt.app"
end
