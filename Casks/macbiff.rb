cask 'macbiff' do
  version '1.1.16'
  sha256 '2444abcb2b4117b8ac24dbad09c3b59270bb8dd93d56c8f9ea39754800f0a93c'

  url "http://downloads.sourceforge.net/project/macbiff/macbiff/#{version}/MacBiff-#{version}.dmg"
  name 'MacBiff'
  homepage 'http://macbiff.sourceforge.net'
  license :gpl

  app 'MacBiff.app'
end
