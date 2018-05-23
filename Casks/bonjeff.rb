cask 'bonjeff' do
  version '1.0.4'
  sha256 '77ed99dc1f2ffd49374454ab13b1079c8bdda9b214330d5af90a1e5a1f3e77e3'

  url "https://github.com/lapcat/Bonjeff/releases/download/v#{version}/Bonjeff.#{version}.zip"
  appcast 'https://github.com/lapcat/Bonjeff/releases.atom',
          checkpoint: '658e6a48b4b7c3e7b8a4ce37c8ed5578429188fc3504cde0a200d61888ed6223'
  name 'Bonjeff'
  homepage 'https://github.com/lapcat/Bonjeff'

  depends_on macos: '>= :sierra'

  app 'Bonjeff.app'

  zap trash: [
               '~/Library/Application Scripts/com.lapcatsoftware.bonjeff',
               '~/Library/Containers/com.lapcatsoftware.bonjeff',
             ]
end
