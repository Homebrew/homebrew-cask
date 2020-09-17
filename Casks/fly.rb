cask "fly" do
  version "6.4.1"
  sha256 "2fe0f4f977285472743201bde2ea0952af05cd40bb390a0f5ddd82b34e4d1e50"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  appcast "https://github.com/concourse/concourse/releases.atom"
  name "fly"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
