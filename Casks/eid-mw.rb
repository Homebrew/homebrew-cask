cask :v1 => 'eid-mw' do
  version '4.0.7'
  sha256 '12ef509d3e535714e7c81353979d7637da594293be81411adfc6f6ea4511374b'

  url "http://eid.belgium.be/nl/binaries/beid-#{version}-7780-signed_tcm227-259517.dmg"
  homepage 'http://eid.belgium.be/'
  license :oss

  pkg 'beid-7780-signed.pkg'

  uninstall :pkgutil => 'be.eid.middleware'
end
