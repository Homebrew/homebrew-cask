cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.4"
  sha256 arm:   "a0c8ec835e9026c22603b140cc09ed93a040e599537c344562db6bab6e551fbd",
         intel: "d47639513edda140cfe8d2333ec8a3434ddb60dc6710c5d8f5398af0b1879dbb"

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
