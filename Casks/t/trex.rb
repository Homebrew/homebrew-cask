cask "trex" do
  version "1.8.1"
  sha256 "a7031d1c3cfe0af18afe21c9d69cd9dc5e60a864d25e36de3a8acb1b2fd4836f"

  url "https://github.com/amebalabs/TRex/releases/download/v#{version}/TRex.zip",
      verified: "github.com/amebalabs/TRex/"
  name "TRex"
  desc "Easy to use text extraction tool"
  homepage "https://trex.ameba.co/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "TRex.app"

  zap trash: [
    "~/Library/Application Scripts/com.ameba.TRex-LaunchAtLoginHelper",
    "~/Library/Caches/com.ameba.TRex",
    "~/Library/Containers/com.ameba.TRex-LaunchAtLoginHelper",
    "~/Library/Preferences/com.ameba.TRex.plist",
  ]
end
