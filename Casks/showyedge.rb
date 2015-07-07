cask :v1 => 'showyedge' do
  version '2.1.0'
  sha256 '93cc84920689680d0ba9646d83f5a75aa367f6a9e59a8d7f699f175d887142b7'

  url "https://pqrs.org/osx/ShowyEdge/files/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml',
          :sha256 => '035bd0bbe318b0bf4ee51c1cdece354e7b7b52db79d904ae0588adc69ad96260'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'
  license :public_domain

  app 'ShowyEdge.app'
end
