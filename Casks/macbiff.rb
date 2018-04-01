cask 'macbiff' do
  version '1.1.16'
  sha256 '2444abcb2b4117b8ac24dbad09c3b59270bb8dd93d56c8f9ea39754800f0a93c'

  url "https://downloads.sourceforge.net/macbiff/macbiff/#{version}/MacBiff-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/macbiff/rss?path=/macbiff',
          checkpoint: 'b5e5e1a202e1fe450c696065ee80d9db8f7cf6e6cc58d3495124f80dbd3d40b8'
  name 'MacBiff'
  homepage 'http://macbiff.sourceforge.net/'

  app 'MacBiff.app'
end
