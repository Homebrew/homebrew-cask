cask 'recd' do
  version '1.5.0'
  sha256 '08785d5bd3e9e37c28f334b5d1a5dc33220e11c6f10e285faaa2bfa29510a457'

  url "https://github.com/aeewhite/Recd/releases/download/v#{version}/Rec.d-Mac-v#{version}.dmg"
  appcast 'https://github.com/aeewhite/recd/releases.atom'
  name 'Rec\'d'
  homepage 'https://github.com/aeewhite/Recd'

  app "Rec'd.app"
end
