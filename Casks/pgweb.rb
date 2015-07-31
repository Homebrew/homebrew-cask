cask :v1 => 'pgweb' do
  version '0.6.2'
  sha256 '17177ff064a4f168b6d45e02275ddac1bd77ab438f69cae32bd86d1dcf321f62'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end
