cask :v1 => 'kkbox' do
  version '5.2.40-6ca0c5a'
  sha256 '0e3f3ee18e4bc561b077f949b41cf07f93e01a0e02c2705eae46e7a06b5f2998'

  url "http://download.kkbox.com/files/KKBOX-#{version}.dmg"
  name 'KKBOX'
  homepage 'http://www.kkbox.com/'
  license :commercial

  app 'KKBOX.app'
end
