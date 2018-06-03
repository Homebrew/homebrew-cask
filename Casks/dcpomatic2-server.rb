cask 'dcpomatic2-server' do
  version '2.12.6'
  sha256 '1395c27621219665756420438542369d7dd5257ee7a5114ed05bb50939a84fd2'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  name 'DCP-o-matic 2 Encode Server'
  homepage 'https://dcpomatic.com/'

  app 'DCP-o-matic 2 Encode Server.app'

  caveats <<~EOS
    Please consider making a donation for DPC-o-matic to support further development.

    https://dcpomatic.com/donate
  EOS
end
