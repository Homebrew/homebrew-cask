cask "bruno" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.2.0"
  sha256 arm:          "1365c987971bae2ef323214605fc3e4d73a5f9f11eda451e6f82cd67725de484",
         intel:        "7b83316b71fc76114cd84604f3d45609ebff7c34ebb81f27ec1be177e37b7d50",
         arm64_linux:  "007d1e39c25db4c5492c32b961bac0b42238edae6b689a6d7f705466b8b65db0",
         x86_64_linux: "2b0e36969acc093e44e73aba39cac24e395228a68531b1a41944fb7f9b8a9524"

  on_macos do
    auto_updates true

    app "Bruno.app"

    zap trash: [
      "~/Library/Application Support/bruno",
      "~/Library/Preferences/com.usebruno.app.plist",
      "~/Library/Saved Application State/com.usebruno.app.savedState",
    ]
  end
  on_linux do
    app_image "bruno_#{version}_#{arch}_linux.AppImage", target: "Bruno.AppImage"
  end

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_#{os}.#{url_end}"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
