cask "tev" do
  arch arm: on_system_conditional(linux: "-arm"), intel: on_system_conditional(macos: "-intel")
  os macos: "dmg", linux: "appimage"

  version "2.14.0"
  sha256 arm:          "cef00c8a54bebcdeb1de5c03b7384f18da0bcaa2cb67c0ad5773c3c5da305671",
         intel:        "0bff902e04f410febc0a8b6d90c22fe1a2be596652857dfedc4940c2565c5b5a",
         arm64_linux:  "df50480fda7019c1d2178ae32060d9ea5bb5f57129406eb0f832eb69baa2ef83",
         x86_64_linux: "a7d4147c2984b93c135ac2559422cb1f80310cf971b07056320e8fbbd63fdf82"

  on_macos do
    app "tev.app"
    binary "#{appdir}/tev.app/Contents/MacOS/tev"

    zap trash: "~/Library/Preferences/org.tom94.tev.plist"
  end
  on_linux do
    app_image "tev#{arch}.appimage", target: "tev.AppImage"
  end

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.#{os}"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
