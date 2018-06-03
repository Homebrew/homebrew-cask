cask 'dcpomatic2-kdm-creator' do
  version '2.12.6'
  sha256 'd5f757ca2d7419dbb84552cf1b50493a5d2e50a858cdbb9cc1d90eefb4c2b87d'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  name 'DCP-o-matic 2 KDM Creator'
  homepage 'https://dcpomatic.com/'

  app 'DCP-o-matic 2 KDM Creator.app'

  caveats <<~EOS
    Please consider making a donation for DPC-o-matic to support further development.

    https://dcpomatic.com/donate
  EOS
end
