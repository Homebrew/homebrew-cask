cask 'portray' do
  version '1.0'
  sha256 '24ff4abdd5199727d66757f67300a298f6e53c170b2be21f5555932abc0e1546'

  url "https://github.com/jasonamyers/portray/releases/download/v#{version}/portray-mac-amd64"
  name 'Portray'
  homepage 'https://github.com/jasonamyers/portray'

  binary 'portray-mac-amd64', target: '/usr/local/bin/portray'
end
