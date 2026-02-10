cask "monal" do
  version "1077"
  sha256 "57c7295aabd56e6667755a4338c64a16fef65caaf758b468d01fbf3251cc3296"

  url "https://downloads.monal-im.org/monal-im/stable/macOS/Monal-#{version}.zip"
  name "Monal"
  desc "Tool to securely connect to chat servers"
  homepage "https://monal-im.org/"

  livecheck do
    url "https://downloads.monal-im.org/monal-im/stable/macOS/latest.txt"
    regex(/^(\d+)$/i)
  end

  conflicts_with cask: "monal@beta"
  depends_on macos: ">= :big_sur"

  app "Monal.app"

  zap trash: "~/Library/Group Containers/group.monal"
end
