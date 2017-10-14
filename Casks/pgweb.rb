cask 'pgweb' do
  version '0.9.9'
  sha256 '656d023ac82d7fd06211332d0dd549d959029e7c04db8eaa87729c63aa9c9bc0'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '27f9a0fe252e4156698dab9c2dd63e2aaaf11116f1b4f4d7d4305581b500a18d'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
