cask 'iojones' do
  version '1.2.2'
  sha256 'e46747b0e4feab6a12bd9773bb0687a171b23c266c0d4c27522e8c7bd989e30e'

  url "https://github.com/acidanthera/IOJones/releases/download/#{version}/IOJones_#{version}.zip"
  appcast 'https://github.com/acidanthera/IOJones/releases.atom'
  name 'IOJones'
  homepage 'https://github.com/acidanthera/IOJones'

  app 'IOJones.app'
end
