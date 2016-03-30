cask 'neo11-chitchat' do
  version '2.2'
  sha256 '62e3e6a17808b7c5b77b127acf98a04cbabe73770f2aa1be2b984d6f20a2e93f'

  url "https://github.com/Neo11/ChitChat/releases/download/v#{version}/ChitChat.zip"
  appcast 'https://github.com/Neo11/ChitChat/releases.atom',
          checkpoint: 'cd10198c6fc8df02488556674ecc3f7e76ffe17128c0b5919259b6d2e2029c21'
  name 'ChitChat'
  homepage 'https://github.com/Neo11/ChitChat'
  license :oss

  app 'ChitChat.app'
end
