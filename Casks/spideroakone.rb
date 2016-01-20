cask 'spideroakone' do
  version :latest
  sha256 :no_check

  url 'https://spideroak.com/getbuild?platform=mac'
  name 'SpiderOakOne'
  homepage 'https://spideroak.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'SpiderOakONE.pkg'

  uninstall delete: '/Applications/SpiderOakONE.app'
end
