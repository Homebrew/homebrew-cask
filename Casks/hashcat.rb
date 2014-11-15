cask :v1 => 'hashcat' do
  version '0.48'
  sha256 '39fee1757b33b3e7232ce3797f0be024fa784dbbd0939b475b5b1ea7462cec5e'

  url "https://hashcat.net/files/hashcat-#{version}.7z"
  homepage 'https://hashcat.net/hashcat/'
  license :unknown

  depends_on :formula => 'unar'

  binary "hashcat-#{version}/hashcat-cli64.app", :target => 'hashcat'
end
