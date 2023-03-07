cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.9"
  sha256 arm:   "fa0be4c7503134f069afda696af5bf5e0d2247a0031e7e757dc18205d2d313be",
         intel: "b8999a60f31c04780807632dfc20fdb41cc0a72794ca47015af776aa1d06d49f"

  url "https://developersquadron.serveftp.com/downloads/devsquadron/v#{version}/macos-#{arch}.tar.xz"
  name "devsquadron"
  desc "Project management for power users and users"
  homepage "https://developersquadron.serveftp.com/"

  livecheck do
    url "https://developersquadron.serveftp.com/downloads/devsquadron/"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "bin/macos-#{arch}/ds"
end
