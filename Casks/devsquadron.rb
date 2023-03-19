cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.10"
  sha256 arm:   "004637ce7452c35f77b132a8cfae8382e1dc54d5f9e81e2c2e90de3e03f7c5d1",
         intel: "8fd33b5f5545b2947bf6284230b688139cb0907d6c82a2861b37d9fab536923a"

  url "https://developersquadron.serveftp.com/downloads/devsquadron/v#{version}/macos-#{arch}.tar.xz"
  name "devsquadron"
  desc "Project management for power users and users"
  homepage "https://developersquadron.serveftp.com/"

  livecheck do
    url "https://developersquadron.serveftp.com/downloads/devsquadron/"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "bin/macos-#{arch}/ds"

  zap trash: [
    "~/Library/Application Support/devsquadron",
    "~/Library/Caches/devsquadron",
  ]
end
