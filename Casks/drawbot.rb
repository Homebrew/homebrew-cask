cask 'drawbot' do
  version '3.123'
  sha256 'ad395d11706ac4a621fb2f1e88131ad0e0d9bb8595f19d65253b2175fdd43707'

  # github.com/typemytype/drawbot was verified as official when first introduced to the cask
  url "https://github.com/typemytype/drawbot/releases/download/#{version}/DrawBot.dmg"
  appcast 'https://github.com/typemytype/drawbot/releases.atom'
  name 'DrawBot'
  homepage 'https://www.drawbot.com/'

  app 'DrawBot.app'
end
