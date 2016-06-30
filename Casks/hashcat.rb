cask 'hashcat' do
  version '3.00'
  sha256 '54fe501ecc7b5246aaf92eef3f6afc23f985f721ef8d53e5ce5fda7d680f46a2'

  url "https://hashcat.net/files/hashcat-#{version}.7z"
  name 'hashcat'
  homepage 'https://hashcat.net/hashcat/'
  license :mit

  depends_on formula: 'unar'

  binary "hashcat-#{version}/hashcat-cli64.app", target: 'hashcat'
end
