cask "bruno" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "3.5.1"
  sha256 arm:          "8cf286597e7eb055f7edc24b8181930c381842fd3e923744870b1d2c94ce146e",
         intel:        "a67d7583403fe09c0fb6f8e08541b5f29909133e66594a5686628d4b32cf75e8",
         arm64_linux:  "0246a525e3e8481904731a56e6170ecdcee327a61bc1084712e037ead5fe1c4a",
         x86_64_linux: "86c16dbfacf012ee07f029666c540e68ce0168bc6025e251c821607be142629d"

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
