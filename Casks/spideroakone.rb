cask 'spideroakone' do
  version :latest
  sha256 :no_check

  url 'https://spideroak.com/getbuild?platform=mac'
  name 'SpiderOakOne'
  homepage 'https://spideroak.com/'

  pkg 'SpiderOakONE.pkg'

  uninstall delete:  '/Applications/SpiderOakONE.app',
            pkgutil: 'org.python.python'
end
