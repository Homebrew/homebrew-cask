cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.11"
  sha256 arm:   "10d346c17b72ed71c8092f6d37d34a261c91d7e05ef2516ce1f4bf9bc16a7909",
         intel: "992b7b13441d6db99263eed4688cc6fc7af2d318c53edacad7a1236f4e0aad1e"

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
