cask 'hosts' do
  version '1.3'
  sha256 '70a73c0fb9f8d9f60f2bc24e549ae2bb6fefa27f59e81d3edf64daccfd6d0ab0'

  # github.com/downloads/specialunderwear/Hosts.prefpane was verified as official when first introduced to the cask
  url "https://github.com/downloads/specialunderwear/Hosts.prefpane/Hosts-#{version}.pkg"
  appcast 'https://github.com/specialunderwear/Hosts.prefpane/releases.atom',
          checkpoint: '616c636afe819d024b6a6247f229d028356f1f9fc3e06b31207350d848f418b9'
  name 'Hosts'
  homepage 'http://permanentmarkers.nl/software.html'

  pkg "Hosts-#{version}.pkg"

  uninstall pkgutil: 'nl.permanentmarkers.hosts.Hosts.pkg'
end
