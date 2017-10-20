cask 'clyang-welly' do
  version '3.0.2'
  sha256 '015a579f92bdf6a7a47db591bbb52d5ab9b1842d758eb783e0a1aae6ad07210c'

  url "https://github.com/clyang/welly/releases/download/#{version}/Welly.v#{version}.zip"
  appcast 'https://github.com/clyang/welly/releases.atom',
          checkpoint: 'df6f6353cfeef2c71dec2d9066dc79d496a9cf603fb18daf465285720f1ca076'
  name 'Welly'
  homepage 'https://github.com/clyang/welly'

  app 'Welly.app'
end
