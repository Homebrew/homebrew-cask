cask :v1 => 'pki-io' do
  version '0.1.0-release1'
  sha256 '7daf9349250c5da5f8bc1a126d704faf161977f82befb9f707bc1d788efbace4'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/pki-io/admin/releases/download/#{version}/pki.io_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/pki-io/admin/releases.atom'
  name 'pki.io'
  homepage 'https://pki.io'
  license :apache

  binary 'pki.io/bin/pki.io'
end
