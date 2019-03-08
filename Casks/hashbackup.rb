cask 'hashbackup' do
  version '2186'
  sha256 '1137b4b3b9aec21fb6a0cc50b2dd5cfcc21d3e245a532e61b3b7f17cb163e582'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
