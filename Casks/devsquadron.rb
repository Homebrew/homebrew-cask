cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.2"
  sha256 arm:   "fe118c69dfd050929c10f2a0db1e92e76c04a2ae2591f0300f6af2fd2a7e1118",
         intel: "e61d04fba788e29e5fb46887814afb61cdb2fa2f79956ebfeaf5bb942cd7c45c"

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
