class Goagentx < Cask
  version '2.3.3'
  sha256 'a711a894d1c44d3e32bda0321adcaab4acca6219dbff798eec29ce8b40402673'

  url 'https://github.com/ohdarling/GoAgentX/releases/download/rel-v2.3.3/GoAgentX-v2.3.3.dmg'
  appcast 'https://goagentx.com/update/SUAppcast.xml'
  homepage 'http://goagentx.com/'

  link 'GoAgentX.app'
end
