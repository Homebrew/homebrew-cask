cask 'pgweb' do
  version '0.9.12'
  sha256 '0f6fecc162124ae54f3b8e0b76b1733c233f8431e425c760d119959bbc5d5c5b'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '445597de572c92359674d811719edba98e3f8adc8773d7af0fba23d1d1a85ae5'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
