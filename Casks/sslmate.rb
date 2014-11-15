cask :v1 => 'sslmate' do
  version :latest
  sha256 :no_check

  url 'https://packages.sslmate.com/macosx/SSLMate-latest.pkg'
  homepage 'https://sslmate.com/'
  license :commercial

  pkg 'SSLMate-latest.pkg'
  uninstall :pkgutil => 'com.sslmate.client'
end
