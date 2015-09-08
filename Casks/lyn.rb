cask :v1 => 'lyn' do
  version '1.5.11'
  sha256 'cca124e8e6e2785cb9c0743029b531a4c5012493273f01afddfe16d5062b61e3'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          :sha256 => '76e8a68df36fb35893e5ad0c5fd464ec0feb0b6a6f857d6b57792e3c7eb82fb5'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'
  license :commercial

  app 'Lyn.app'
end
