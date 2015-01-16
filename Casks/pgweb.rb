cask :v1 => 'pgweb' do
  version '0.5.0'
  sha256 'b96e0383bf0981ad0dfeab0aabd878e4a5599c327e213986e1e63e2700b12934'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end
