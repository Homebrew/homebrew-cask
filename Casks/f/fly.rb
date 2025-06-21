cask "fly" do
  version "7.13.2"
  sha256 "01c071de4d22b421de8fcb10b6a47335264e7f106743e50c99e10d79fa3fab3a"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
