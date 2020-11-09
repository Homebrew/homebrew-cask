cask "fly" do
  version "6.5.1"
  sha256 "17b87c775dda5106118f080748b3526de88859c4c0fd7bf0d5a90ea4e4174569"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast "https://github.com/concourse/concourse/releases.atom"
  name "fly"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
