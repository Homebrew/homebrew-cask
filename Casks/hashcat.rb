cask :v1 => 'hashcat' do
  version '0.49'
  sha256 '02ca88393ecf33aaa0905592ca71e90671338c9540f212b3ad0f4666a93b406d'

  url "https://hashcat.net/files/hashcat-#{version}.7z"
  name 'hashcat'
  homepage 'https://hashcat.net/hashcat/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on :formula => 'unar'

  binary "hashcat-#{version}/hashcat-cli64.app", :target => 'hashcat'
end
