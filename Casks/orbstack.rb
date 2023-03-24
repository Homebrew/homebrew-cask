cask "orbstack" do
  arch arm:   "arm64",
       intel: "amd64"

  sha256 :no_check

  url "https://orbstack.dev/download/beta/latest/#{arch}"
  name "orbstack"
  desc "Run Docker and Linux with this drop-in replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  auto_updates true

  app "OrbStack.app"

  livecheck do
    skip "No version information available"
  end

  zap trash: "~/.orbstack"
end
