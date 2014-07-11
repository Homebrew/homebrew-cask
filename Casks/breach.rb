class Breach < Cask
  version '0.3.20-alpha.5'
  sha256 '7b2389932bf32a48c4bb485a5bbe0f80fb49ae5c85e7d8319a51aec14714d4e1'

  url "https://raw.githubusercontent.com/breach/releases/master/v#{version}/breach-v#{version}-darwin-ia32.tar.gz"
  homepage 'http://breach.cc'

  link "breach-v#{version}-darwin-ia32/Breach.app"
end
