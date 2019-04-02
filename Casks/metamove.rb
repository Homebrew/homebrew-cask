cask 'metamove' do
  version '0.3.7'
  sha256 'a6635401eb0ab4e5bce40f28c77e4f543cb41fc8faa7e29b2491b77148e3fdea'

  url "https://github.com/jmgao/metamove/releases/download/v#{version}/metamove-#{version}.zip"
  appcast 'https://github.com/jmgao/metamove/releases.atom'
  name 'metamove'
  homepage 'https://github.com/jmgao/metamove'

  app 'metamove.app'
end
