cask 'hashcat' do
  version '2.00'
  sha256 '142c2b419bedbec36c19ee14d09a3fe49e876f1a1d6064fab6595eca83e920cd'

  url "https://hashcat.net/files/hashcat-#{version}.7z"
  name 'hashcat'
  homepage 'https://hashcat.net/hashcat/'
  license :mit

  depends_on formula: 'unar'

  binary "hashcat-#{version}/hashcat-cli64.app", target: 'hashcat'
end
