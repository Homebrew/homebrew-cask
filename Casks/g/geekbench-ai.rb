cask "geekbench-ai" do
  version "1.3.0"
  sha256 "ce651c6d8def3d553b17f807a89c20b3cdff7f7b8655b7005d23d6bdd48f3431"

  url "https://cdn.geekbench.com/GeekbenchAI-#{version}-Mac.zip"
  name "Geekbench AI"
  desc "Cross-platform AI benchmark to evaluate AI workload performance"
  homepage "https://www.geekbench.com/ai/"

  # Upstream's appcast feed is not populated but may be able to be used in the future
  # url "https://www.primatelabs.com/appcast/geekbenchai.xml"
  # strategy :sparkle, &:short_version
  livecheck do
    url "https://www.geekbench.com/ai/download/mac/"
    regex(/href=.*?GeekbenchAI[._-]v?(\d+(?:\.\d+)+)[._-]Mac\.zip/i)
  end

  depends_on macos: ">= :ventura"

  app "Geekbench AI.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.primatelabs.macos.geekbenchml.sfl*",
    "~/Library/Caches/com.primatelabs.macos.geekbenchml",
    "~/Library/HTTPStorages/com.primatelabs.macos.geekbenchml",
    "~/Library/Preferences/com.primatelabs.macos.geekbenchml.plist",
    "~/Library/Saved Application State/com.primatelabs.macos.geekbenchml.savedState",
  ]
end
