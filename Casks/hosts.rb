cask :v1 => 'hosts' do
  version '1.3'
  sha256 '70a73c0fb9f8d9f60f2bc24e549ae2bb6fefa27f59e81d3edf64daccfd6d0ab0'

  url "https://github.com/downloads/specialunderwear/Hosts.prefpane/Hosts-#{version}.pkg"
  homepage 'http://permanentmarkers.nl/software.html'
  license :oss

  pkg "Hosts-#{version}.pkg"

  uninstall :pkgutil => 'nl.permanentmarkers.hosts.Hosts.pkg'
end
