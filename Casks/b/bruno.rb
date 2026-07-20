cask "bruno" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "3.5.2"
  sha256 arm:          "8e8e52be8d255b35f0161f514e94d2aae2f5071ee94e0ad7bc9fd2373a430930",
         intel:        "1811a1f43c3a7bef451eb4fae0a7e2b648a14ff256e87b3dbc44f37d2a209d20",
         arm64_linux:  "1fe2d05dc7fa2ba71fb2ff3bef03ca62e0c9e47f28fb558e9fa519d7710f6a11",
         x86_64_linux: "3900186807f2fb39794c0cb45f52c1712201df0b3d88b7c8d1091223740e0352"

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
