cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.2.10"

  on_macos do
    sha256 "28aadcee63093cf2adb81ac9c66e0c62d3804c570d97af66bfbb72528ccd272e"

    auto_updates true

    app "iloader.app"

    zap trash: [
      "~/Library/Application Support/me.nabdev.iloader",
      "~/Library/Caches/me.nabdev.iloader",
      "~/Library/WebKit/me.nabdev.iloader",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "2befe1faeb839d6d503dc43857f1c6491c7380d64342addf443c626a65210a78",
           x86_64_linux: "d9c7b4a3be71b2b26f4919d25bb3d698784472fb9b18e806aaea0fb0fc9446bb"

    app_image "iloader-linux-#{arch}.AppImage", target: "iloader.AppImage"
  end

  url "https://github.com/nab138/iloader/releases/download/v#{version}/#{os}"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
