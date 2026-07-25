cask "bruno" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "4.0.0"
  sha256 arm:          "533d435d1760f8ccdb98db24605335716710d346181659fb60956a7e4d529407",
         intel:        "53d49a890fb3c53a25c6807448d2134881fdb79cda7e47d13ce705d722804f05",
         arm64_linux:  "fe6ac8e0eaa3e6b479f8732827afb02001994af402289606f4901ac48b438b85",
         x86_64_linux: "e07e655b83450e7b9f8789972eb37d0d49e8c33d9431f1983140fc0ebeb1ee26"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_#{os}#{url_end}",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "Bruno.app"

    zap trash: [
      "~/Library/Application Support/bruno",
      "~/Library/Preferences/com.usebruno.app.plist",
      "~/Library/Saved Application State/com.usebruno.app.savedState",
    ]
  end

  on_linux do
    app_image "bruno_#{version}_#{arch}_linux.AppImage"
  end
end
