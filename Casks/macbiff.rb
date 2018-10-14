cask 'macbiff' do
  version '1.1.16'
  sha256 '2444abcb2b4117b8ac24dbad09c3b59270bb8dd93d56c8f9ea39754800f0a93c'

  # downloads.sourceforge.net/macbiff was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/macbiff/macbiff/#{version}/MacBiff-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/macbiff/rss?path=/macbiff'
  name 'MacBiff'
  homepage 'https://macbiff.sourceforge.io/'

  app 'MacBiff.app'
end
