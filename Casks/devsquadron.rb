cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.12"
  sha256 arm:   "b1289fd39ac11ccf94c708663a6854c27e8c547207f4a291d2d4eb2b3eb6bd7d",
         intel: "1d721d51ac7e89215ec1564be5751bac693085ddba62f244a6cad490f17f39f1"

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
