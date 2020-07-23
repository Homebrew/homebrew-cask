cask 'mockoon' do
  version '1.9.0'
  sha256 '6b316a3fbad7c62a8e5840a8cbaf18f2613930d944224a830000107717814794'

  # github.com/mockoon/mockoon/ was verified as official when first introduced to the cask
  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/mockoon/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
