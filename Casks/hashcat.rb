class Hashcat < Cask
  version '0.47'
  sha256 '239acb25b88d529314f2f98af0d6a66772e886c9efbb4ed2b94b7587c9a68455'

  url "https://hashcat.net/files/hashcat-#{version}.7z"
  homepage 'https://hashcat.net/hashcat/'
  license :unknown

  depends_on :formula => 'unar'

  binary "hashcat-#{version}/hashcat-cli64.app", :target => 'hashcat'
end
