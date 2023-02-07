cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.6"
  sha256 arm:   "dac7c726bf8970fd164d08f6723b8b477a7f03feaa5bb804c1e4ae6e552a3bbf",
         intel: "38583faa0d40420ed50b4f9b880c79e2e4ba57837c6f1f13334618a70eeb87c4"

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
