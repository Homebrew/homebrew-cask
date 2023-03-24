cask "orbstack" do
  arch arm:   "arm64",
       intel: "amd64"

  version :latest
  sha256 :no_check

  url "https://orbstack.dev/download/beta/latest/#{arch}"
  name "orbstack"
  desc "Run Docker and Linux with this drop-in replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  livecheck do
    skip "No version information available"
  end

  app "OrbStack.app"

  zap trash: "~/.orbstack"
end
