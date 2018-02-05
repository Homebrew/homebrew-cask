cask 'mockplus' do
  version '3.2.10.2'
  sha256 '84a9a1b6226b0496d7e2a875ceef747175c1b985d74ac5631850b42ec3f42105'

  # mockplus.com is the english version of mockplus.cn (official), creators of the software
  url "https://s3-us-west-1.amazonaws.com/mockplus-static/software/macos/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
