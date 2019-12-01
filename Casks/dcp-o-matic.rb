cask 'dcp-o-matic' do
  version '2.14.16'
  sha256 '6b139bcb2fbff7bb64c9dc888948df8eff20698d45f94031617e898d8b894afa'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
