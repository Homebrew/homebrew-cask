cask "t3-code" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "0.1.3"
  sha256 arm:          "fc82e1b3d95513b32154495bc5b2380f86e7455237db49d6c7a9ca045450e4d8",
         intel:        "aa87357998eaf71be237a54608562cf25ce88793bf4e007f0185810ac971e053",
         x86_64_linux: "801cce482d2085da1bfba1d0e301c0a2d75a7c8d0efd24865c2261948342df21"

  on_macos do
    auto_updates true
    depends_on macos: :ventura

    app "T3 Code (Beta).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.t3tools.t3code.sfl*",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Application Support/t3code",
      "~/Library/Application Support/t3code-v2",
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
