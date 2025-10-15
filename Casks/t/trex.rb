cask "trex" do
  version "1.9.0"
  sha256 "d8ff68dfee2f193ea253cd0bbaaefae958d9ddb64ebdc297002a4ac3e1373db7"

  url "https://github.com/amebalabs/TRex/releases/download/v#{version}/TRex-#{version}.zip",
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
