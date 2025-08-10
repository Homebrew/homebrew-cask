cask "monal@beta" do
  version "1045"
  sha256 "cc439f14fe02218f2dbe99a8e4c52e9a8aed272adc0181b52c45431e0bcb41f3"

  url "https://downloads.monal-im.org/monal-im/beta/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "Tool to securely connect to chat servers"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/beta/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal"
  depends_on macos: ">= :big_sur"

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
