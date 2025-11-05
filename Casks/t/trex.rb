cask "trex" do
  version "1.9.1"
  sha256 "01937c514552f2a377de1c272b8cd5bda28e3f3ce752036e48200adaff457c65"

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
