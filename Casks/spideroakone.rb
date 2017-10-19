cask 'spideroakone' do
  version :latest
  sha256 :no_check

  if MacOS.version <= :sierra
    url 'https://spideroak.com/release/spideroak/osx'
  else
    url 'https://spideroak.com/release/spideroak/osx_hs'
  end
  name 'SpiderOakOne'
  homepage 'https://spideroak.com/'

  depends_on macos: '>= :mountain_lion'

  pkg 'SpiderOakONE.pkg'

  uninstall pkgutil: 'org.python.python'
end
