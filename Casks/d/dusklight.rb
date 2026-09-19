cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.0.0"
  sha256 arm:          "d84531d9b3b94e8c90166f42dbe003338eea382c953e4ab29f92703ca1053da0",
         intel:        "23ef547fe8c783dba331975d1f8612cbed70878365f39cd4870638189a92a9e6",
         arm64_linux:  "f1ac6d0d92b732bcc1d0334f3b4464a435f7ccd5d4a9f18dce197af0a332a8de",
         x86_64_linux: "310de0c8e27c6ce8b1217a689412201e445ca7cdddefa429df718a645540450a"

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
