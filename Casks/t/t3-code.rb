cask "t3-code" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "0.0.44"
  sha256 arm:          "dfa51c348fed4eedfb30deb5d4e1ea61cb6a91eb5f342301a1f3210fb71b044a",
         intel:        "6357b4406057b936ac61b55144f0910b68016bc339a2c7e3897df3dfab3ed09f",
         x86_64_linux: "bab6cf29f13015af7e966e953e8ed5a9ad7b6e63cb864cf41e3e0815ea857219"

  on_macos do
    auto_updates true
    depends_on macos: :ventura

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
    depends_on arch: :x86_64

    app_image "T3-Code-#{version}-#{arch}.AppImage", target: "T3 Code.AppImage"
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
