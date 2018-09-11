cask 'spideroakone' do
  version :latest
  sha256 :no_check

  if MacOS.version == :high_sierra
    url 'https://spideroak.com/release/spideroak/osx_hs'
  else
    url 'https://spideroak.com/release/spideroak/osx'
  end
  name 'SpiderOakOne'
  homepage 'https://spideroak.com/'

  depends_on macos: '>= :mavericks'

  pkg 'SpiderOakONE.pkg'

  uninstall pkgutil: 'org.python.python'
end
