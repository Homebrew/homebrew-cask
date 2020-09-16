cask "minishift" do
  version "1.34.2"
  sha256 "43f624d87d9ba09b5f62b8a5e1fba29f6894125b43341402b0b2a4fd52abc503"

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast "https://github.com/minishift/minishift/releases.atom"
  name "Minishift"
  homepage "https://github.com/minishift/minishift"

  binary "minishift-#{version}-darwin-amd64/minishift"
end
