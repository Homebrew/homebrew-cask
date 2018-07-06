cask 'bdash' do
  version '1.4.0'
  sha256 '257bc19e68a16a8f3aea0a40aadbdffab7aaf6e285ceb6bc6895f9f96122c2e7'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
