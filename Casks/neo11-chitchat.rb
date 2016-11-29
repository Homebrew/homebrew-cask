cask 'neo11-chitchat' do
  version '2.3'
  sha256 'c56ad3d84a1dbb01de45f2148c83ee6007d6e18e94817de8a23a42743f381247'

  url "https://github.com/Neo11/ChitChat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/Neo11/ChitChat/releases.atom',
          checkpoint: '1d331c02c9dbecc82e852ae9069473b63ad1384c46b183be5d0e83259a954383'
  name 'ChitChat'
  homepage 'https://github.com/Neo11/ChitChat'

  app 'ChitChat.app'
end
