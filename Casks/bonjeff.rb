cask 'bonjeff' do
  version '1.0.3'
  sha256 'f083ca2e5f46e1a3a012863e7e6012087e700ef7b7e8cd3354f123a649522984'

  url "https://github.com/lapcat/Bonjeff/releases/download/v#{version}/Bonjeff.#{version}.zip"
  appcast 'https://github.com/lapcat/Bonjeff/releases.atom',
          checkpoint: '1b6822f478c8e50b0f2e69ed0514647e8e91aa10e9e0d78f338e427bb5396e8e'
  name 'Bonjeff'
  homepage 'https://github.com/lapcat/Bonjeff'

  depends_on macos: '>= :sierra'

  app 'Bonjeff.app'

  zap trash: [
               '~/Library/Application Scripts/com.lapcatsoftware.bonjeff',
               '~/Library/Containers/com.lapcatsoftware.bonjeff',
             ]
end
