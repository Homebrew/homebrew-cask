cask 'knuff' do
  version '1.2'
  sha256 '3e2aae3b80ec53d70a6f68fc309d6e54d09b38cdf97638885f70e3e8eb86ad53'

  url "https://github.com/KnuffApp/Knuff/releases/download/v#{version}/Knuff.app.zip"
  appcast 'https://github.com/KnuffApp/Knuff/releases.atom',
          checkpoint: 'c19f26bcd5a18f030b8d790de5b16fc7ffcc1fd3ccb919121eadb97eed637c5f'
  name 'Knuff'
  homepage 'https://github.com/KnuffApp/Knuff'

  app 'Knuff.app'
end
