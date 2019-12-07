cask 'notable' do
  version '1.8.2'
  sha256 '9b02f93804bab4ed8f9c694cbc0aaa86fff03b3eae85f1adb92d76e25b8cb029'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  auto_updates true

  app 'Notable.app'
end
