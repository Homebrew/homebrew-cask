cask :v1 => 'hashcat' do
  version '0.50'
  sha256 'ecbe4300306e929397f4e721f7b8476208e1be079caa2cd3c2a819fa225ca415'

  url "https://hashcat.net/files/hashcat-#{version}.7z"
  name 'hashcat'
  homepage 'https://hashcat.net/hashcat/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on :formula => 'unar'

  binary "hashcat-#{version}/hashcat-cli64.app", :target => 'hashcat'
end
