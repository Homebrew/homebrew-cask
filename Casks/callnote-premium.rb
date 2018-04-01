cask 'callnote-premium' do
  version '2.3.8'
  sha256 '3c053acf7c77e38dc76d8593a0499991a5191103cd3b21941c44578c50ce3e17'

  url "http://callnote.kandasoft.com/callnote-premium-install-#{version}.pkg"
  name 'Callnote Premium'
  homepage 'https://www.kandasoft.com/home/kanda-apps/skype-call-recorder.html'

  pkg "callnote-premium-install-#{version}.pkg", allow_untrusted: true

  uninstall pkgutil: 'callnote-pro'
end
