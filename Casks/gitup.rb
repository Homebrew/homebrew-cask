cask 'gitup' do
  version '1.0.3'
  sha256 '58c51e521a51e4b92bbc9d1922b315d5d2086fa0f7e0e5b0186f1ee2c2aececc'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom',
          checkpoint: 'c24e47e6c6f5c4e7c4945c43a07b6c2fbfe2c040d11efbd978d261f609452e36'
  name 'GitUp'
  homepage 'http://gitup.co'
  license :gpl

  depends_on macos: '>= :mountain_lion'

  app 'GitUp.app'
  binary 'GitUp.app/Contents/SharedSupport/gitup'
end
