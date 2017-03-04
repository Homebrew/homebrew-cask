cask 'horos' do
  version '2.0.0'
  sha256 '1af3252b5166bfb48769b93eeba64fc42f79bbf6a88625df96ec4a359d117f51'

  url "https://www.horosproject.org/wp-content/uploads/downloads/Horos#{version}.dmg"
  name 'Horos – Free, open medical image viewer'
  homepage 'https://www.horosproject.org/'

  app 'Horos.app'
end
