cask 'macbiff' do
  version '1.1.16'
  sha256 '2444abcb2b4117b8ac24dbad09c3b59270bb8dd93d56c8f9ea39754800f0a93c'

  url "https://downloads.sourceforge.net/macbiff/macbiff/#{version}/MacBiff-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/macbiff/rss?path=/macbiff',
          checkpoint: '7aabb0ea6d469d4d1c225c9be9e399eeccfc24b4cf1a0a161b401d9618e6df72'
  name 'MacBiff'
  homepage 'http://macbiff.sourceforge.net'

  app 'MacBiff.app'
end
