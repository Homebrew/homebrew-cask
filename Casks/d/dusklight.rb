cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.0.1"
  sha256 arm:          "b76dff320bb90d163280996ec06be6a094eda538c960b8d0a7817b167515c991",
         intel:        "7c7327376d7de5cd684d509ea21bb08981d24e2fa1025bbd62792839d84b173f",
         arm64_linux:  "b3ffe21f804bb254eb4b475f2fc446f70a47bd2c2453426a77952b8850b87d9d",
         x86_64_linux: "bd6b016c212033c424431b087ad1b96ba7d223102188aa2994cb0d9cc657a879"

  on_macos do
    depends_on macos: :monterey

    app "Dusklight.app"

    zap trash: "~/Library/Application Support/TwilitRealm"
  end
  on_linux do
    app_image "Dusklight-v#{version}-linux-#{arch}.AppImage", target: "Dusklight.AppImage"
  end

  url "https://github.com/TwilitRealm/dusklight/releases/download/v#{version}/Dusklight-v#{version}-#{os}-#{arch}.#{url_end}"
  name "Dusklight"
  desc "Reverse-engineered reimplementation of Twilight Princess"
  homepage "https://twilitrealm.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
