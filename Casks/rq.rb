cask 'rq' do
  version '0.10.4'
  sha256 'cae9ee8589dfb4fd0ab13ac7991d372fc2531f7c69374257b943dc2e096b750a'

  url "https://github.com/dflemstr/rq/releases/download/v#{version}/record-query-v#{version}-x86_64-apple-darwin.tar.gz"
  appcast 'https://github.com/dflemstr/rq/releases.atom'
  name 'rq'
  homepage 'https://github.com/dflemstr/rq'

  binary 'x86_64-apple-darwin/rq'
end
