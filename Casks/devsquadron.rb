cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.5"
  sha256 arm:   "5a7ca7f2e3fd1ea7a4bc35e5564d5d1d95594fec1415454295f7c55ab0ee9610",
         intel: "a5ca536c26ad93d465d7192039cca1133845bd78400bf129fbb770516232e015"

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
