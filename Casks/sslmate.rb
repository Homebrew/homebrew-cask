cask 'sslmate' do
  version :latest
  sha256 :no_check

  url 'https://packages.sslmate.com/macosx/SSLMate-latest.pkg'
  name 'SSLMate'
  homepage 'https://sslmate.com/'
  license :commercial

  pkg 'SSLMate-latest.pkg'

  uninstall pkgutil: 'com.sslmate.client'
end
