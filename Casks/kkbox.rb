cask :v1 => 'kkbox' do
  version '5.2.20-e5e423c'
  sha256 '489a9ac26ba7b0e4fcc1d33ece54a5ea1be0751a855056e46500de76affd36ae'

  url "http://download.kkbox.com/files/KKBOX-#{version}.dmg"
  name 'KKBOX'
  homepage 'http://www.kkbox.com/'
  license :commercial

  app 'KKBOX.app'
end
