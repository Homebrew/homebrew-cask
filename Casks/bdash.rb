cask 'bdash' do
  version '1.5.4'
  sha256 '503275abab464eaf07246fd07e9fa81ba0a23f9a1c6dde1a2553eeefc8e0d665'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
