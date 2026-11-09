cask "hop" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.2"
  sha256 arm:          "783878a2e65c19e286b0a042d5d3a09e54cd450ee32cc10b710045c9efc1d14d",
         intel:        "62f2ddf1486e9a7e7a34adf7a6f4894ec46043c2ae5d241b8634bad1bae4e294",
         x86_64_linux: "b69d5e2bd32839f341478f8ada14eaafd696aff3b0873119b9691a5e11f9493a"

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
