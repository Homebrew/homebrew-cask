class Spideroak < Cask
  version 'latest'
  sha256 :no_check

  url 'https://spideroak.com/getbuild?platform=mac'
  homepage 'http://spideroak.com'

  app 'SpiderOak.app'
end
