cask :v1 => 'spideroak' do
  version :latest
  sha256 :no_check

  url 'https://spideroak.com/getbuild?platform=mac'
  homepage 'http://spideroak.com'
  license :unknown    # todo: improve this machine-generated value

  app 'SpiderOak.app'
end
