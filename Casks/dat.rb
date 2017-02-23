cask 'dat' do
  version '1.0.2'
  sha256 'b6345387f5609c7f3b3e867442c7823dac1788eb49672aa2ffa6e0d02c7a5f8d'

  # github.com/datproject/dat-desktop was verified as official when first introduced to the cask
  url "https://github.com/datproject/dat-desktop/releases/download/v#{version}/dat-desktop-#{version}-mac.zip"
  appcast 'https://github.com/datproject/dat-desktop/releases.atom',
          checkpoint: 'be65a17ca77991a2fb243c467c2b48d83ab4575140b7931d7ca5396d7f0a8cd8'
  name 'Dat Desktop'
  homepage 'https://datproject.org'

  app 'Dat.app'
end
