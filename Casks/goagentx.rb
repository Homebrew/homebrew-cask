class Goagentx < Cask
  version :latest
  sha256 :no_check

  url 'https://goagentx.com/files/GoAgentX.dmg'
  appcast 'https://goagentx.com/update/SUAppcast.xml'
  homepage 'http://goagentx.com/'

  app 'GoAgentX.app'
end
