cask "t3-code" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "0.0.33"

  on_macos do
    sha256 arm:   "d8c42f3d79047ce43c073922a8abf9546b43b78b7f84c5bc6f95815d873eddd0",
           intel: "2c394045f2ed76dead0d8859bcea34db4815bbcba9276cb18788bc2b7248bc30"

    auto_updates true
    depends_on macos: :monterey

    app "T3 Code (Alpha).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.t3tools.t3code.sfl*",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end
  on_linux do
    sha256 "415c8648f43c3d22d572f27f2c50fdc8c310ea7fcde9537b903e1e2f1c8775a1"

    depends_on arch: :x86_64

    app_image "T3-Code-#{version}-#{arch}.AppImage", target: "T3 Code.AppImage"
    binary "T3-Code-#{version}-#{arch}.AppImage", target: "t3code"
  end

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.#{os}"
  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
