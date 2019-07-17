cask 'hashbackup' do
  version '2376'
  sha256 'a173e966ce4482d112b97e4fbe1a477b14675e8c1c11aecbc2760560bd35acfc'

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb.r#{version}.Darwin.x86_64", target: 'hb'
end
