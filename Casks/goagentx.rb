cask :v1 => 'goagentx' do
  version :latest
  sha256 :no_check

  url 'https://goagentx.com/files/GoAgentX.dmg'
  appcast 'https://goagentx.com/update/SUAppcast.xml'
  homepage 'http://goagentx.com/'
  license :unknown

  app 'GoAgentX.app'
end
