cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.1"
  sha256 arm:   "13f365237bf287279562b351fd7811c08cade967c28e7f9859426bfdec743325",
         intel: "5f01baf4293a64963453ef5e4fb5abf7d04491d1f1fbc0ad879a71c9d9611e7f"

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
