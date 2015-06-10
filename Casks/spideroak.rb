cask :v1 => 'spideroak' do
  version :latest
  sha256 :no_check

  url 'https://spideroak.com/getbuild?platform=mac'
  name 'SpiderOak'
  homepage 'https://spideroak.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SpiderOak.app'
end
