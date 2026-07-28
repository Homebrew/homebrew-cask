cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.29"

  artifact = on_system_conditional linux: "T3-Code-#{version}-x86_64.AppImage",
                                   macos: "T3-Code-#{version}-#{arch}.dmg"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/#{artifact}",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 arm:   "ec0a309a67b85a9973d5e477eb4a19781d8d7d100f192594a8956f142618ea3b",
           intel: "19cb6234228784054f543c82b41a06d35376c685474b3770f65544896eba83d4"

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
    sha256 "38030aa4f0fe0131426978787442ca903b40b2f928d52a11d16893b9d9ca8cf4"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code.AppImage"
  end
end
