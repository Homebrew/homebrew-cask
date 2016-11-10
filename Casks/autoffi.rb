cask 'autoffi' do
  version '0.0.1'
  sha256 'd17a2a70bfe28c9dff8338c6c5851e2acfaf10357e8595ff0e46cd72ad64e6dc'

  url "https://github.com/AutoFFI/AutoFFI/releases/download/v#{version}-alpha/autoffi-v#{version}-alpha-osx-sierra-10.12.tar.gz"
  appcast 'https://github.com/AutoFFI/AutoFFI/releases.atom',
          checkpoint: '7ab0902c0c3b4e12c7e581bd20085fe64ddcc6e5e5ccdea6975697bc639e3722'
  name 'AutoFFI'
  homepage 'http://github.com/autoffi/autoffi'

  binary 'bin/affc'
end
