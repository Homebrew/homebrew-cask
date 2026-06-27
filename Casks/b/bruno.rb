cask "bruno" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "3.5.0"
  sha256 arm:          "11490cd4d9ebdf3853371a3905129ad6628a88f23e9905fb0ec1d350bec58a2d",
         intel:        "76a199a3fc78557cffd88bce4d66a451645134937d08660abc7891cd55c32936",
         arm64_linux:  "90b8fdf1848000a95580e9020da5bfab171089e2d123231a472efd1f98a3a451",
         x86_64_linux: "5b03a102849ac46c3fca2193aa0b6a103ba86ae7c732fd4e367cc0d4287c1e93"

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
