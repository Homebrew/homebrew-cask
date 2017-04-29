cask 'ipartition' do
  if MacOS.version <= :mavericks
    version '3.4.5'
    sha256 '0b66c44dfb4b8525056b68bfd8f4d56fe4b78fd0e5e4705659bfd242e2722319'

    url "https://coriolis-systems.com/downloads/iPartition-#{version}.zip"
  else
    version '3.6.0'
    sha256 '9d5806d74a3dd796583b43ca10e48810a3347c76cbecd460c257c36d2ae51fff'

    url "https://coriolis-systems.com/downloads/iPartition-#{version}.dmg"
  end

  name 'iPartition'
  homepage 'https://coriolis-systems.com/iPartition/'

  app 'iPartition.app'
end
