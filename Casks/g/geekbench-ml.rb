cask "geekbench-ml" do
  version "0.6.0"
  sha256 "ae577f44e397cb1fea8873c72bb317f9145cca9ec9d6cfa79bad866f287500a3"

  url "https://cdn.geekbench.com/GeekbenchML-#{version}-Mac.zip"
  name "Geekbench ML"
  desc "Cross-platform AI benchmark to evaluate AI workload performance"
  homepage "https://www.geekbench.com/ml/"

  livecheck do
    url "https://www.primatelabs.com/appcast/geekbenchml.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Geekbench ML.app"

  zap trash: [
    "~/Library/Caches/com.primatelabs.macos.geekbenchml",
    "~/Library/HTTPStorages/com.primatelabs.macos.geekbenchml",
    "~/Library/Preferences/com.primatelabs.macos.geekbenchml.plist",
  ]
end
