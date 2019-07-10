cask 'notable' do
  version '1.6.2'
  sha256 '3549c247834300deefe81b280d602bec5de82e64cae93ea77d8c73a1f8af00ec'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
