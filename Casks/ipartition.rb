cask 'ipartition' do
  if MacOS.version <= :mavericks
    version '3.4.5'
    sha256 '0b66c44dfb4b8525056b68bfd8f4d56fe4b78fd0e5e4705659bfd242e2722319'

    url "https://coriolis-systems.com/downloads/iPartition-#{version}.zip"
  else
    version '3.6.2'
    sha256 '46e17302cd7153d6b4c6ef46ba84fa8ee1112b65789a4d244b78b7e6d8c2f6c2'

    url "https://coriolis-systems.com/downloads/iPartition-#{version}.dmg"
  end

  name 'iPartition'
  homepage 'https://coriolis-systems.com/iPartition/'

  app 'iPartition.app'
end
