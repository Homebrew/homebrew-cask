cask 'notable' do
  version '1.5.0'
  sha256 '895529b835bfe465d4036f4b5edfa510eb22f8b9b540eb1fa26679e559ce99f3'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
