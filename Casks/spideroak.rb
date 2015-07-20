cask :v1 => 'spideroak' do
  version :latest
  sha256 :no_check

  url 'https://spideroak.com/getbuild?platform=mac'
  name 'SpiderOakONE'
  homepage 'https://spideroak.com/'
  license :commercial

  pkg 'SpiderOakONE.pkg'
end
