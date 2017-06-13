cask 'spideroakone' do
  version :latest
  sha256 :no_check

  url 'https://spideroak.com/release/spideroak/osx'
  name 'SpiderOakOne'
  homepage 'https://spideroak.com/'

  depends_on macos: '>= :mountain_lion'

  pkg 'SpiderOakONE.pkg'

  uninstall pkgutil: 'org.python.python'
end
