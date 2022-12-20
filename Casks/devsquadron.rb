cask "devsquadron" do
  version "0.0.0"
  sha256 "eb60640da7afdc75c722c1e0ac7262147f043ed8cd69388db3cfe52d5d8a3a7e"

  url "https://developersquadron.com/api/downloads/devsquadron/v#{version}/macos-intel.tar.xz"
  name "devsquadron"
  desc "Project management for power users and users"
  homepage "https://developersquadron.com/"

  livecheck do
    url "https://developersquadron.com/api/downloads/"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "bin/macos-intel/ds"
end
