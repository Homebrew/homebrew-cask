cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.3"
  sha256 arm:   "e71d4708967e2d0cb95ee9d20a55cacc537fa7c45a46e3dfdb4a3ee5218c04d0",
         intel: "3db905f07d2d9a9e9450bb6e793d54fc391e41add4b919f135355e692a05cab2"

  url "https://developersquadron.com/downloads/devsquadron/v#{version}/macos-#{arch}.tar.xz"
  name "devsquadron"
  desc "Project management for power users and users"
  homepage "https://developersquadron.com/"

  livecheck do
    url "https://developersquadron.com/downloads/devsquadron/"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "bin/macos-#{arch}/ds"
end
