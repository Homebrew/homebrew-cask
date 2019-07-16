cask 'nteract' do
  version '0.14.4'
  sha256 '151098f4adafe0e4d614d3f75632c79136e8b73f85fca0bf2a32a7e8abe8c33f'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  auto_updates true

  app 'nteract.app'
end
