cask "hop" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.0"
  sha256 arm:          "b7438f7ecc152de8bfb6145b170f86b5b18f5e3f221edb0082d1164de3a1cec3",
         intel:        "c2666f35d9f50a8557a57ac7b528b25bd03cb0ca41ca813ce3b53e1635c4e1ab",
         x86_64_linux: "14f65e74c88ae97ef414e86809b005ac89981f72863560bc4587cae1978a6450"

  on_macos do
    depends_on macos: :monterey

    app "HOP.app"

    zap trash: [
      "~/Library/Application Support/net.golbin.hop",
      "~/Library/Caches/net.golbin.hop",
      "~/Library/Logs/net.golbin.hop",
      "~/Library/WebKit/net.golbin.hop",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "HOP-linux-#{arch}.AppImage", target: "HOP.AppImage"

    zap trash: [
      "~/.cache/net.golbin.hop",
      "~/.local/share/net.golbin.hop",
    ]
  end

  url "https://github.com/golbin/hop/releases/download/v#{version}/HOP-#{os}-#{arch}.#{url_end}"
  name "HOP"
  desc "View and edit HWP documents"
  homepage "https://golbin.github.io/hop/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
