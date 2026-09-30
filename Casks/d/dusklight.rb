cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.0.3"
  sha256 arm:          "b3e6aae6c7fc6a4f863b45b64e3bdcf12e5d88213f82bc5a08e215c39e4682f2",
         intel:        "ab54f38637e3a0a4b50192b5ba26d9052a66426e38ebaaf583d3eff4ac12aa01",
         arm64_linux:  "7f7d72054847277afccdddb93f7cca4e3b730768da64e30a4cdd6774c23bdbf9",
         x86_64_linux: "87ec251963c984ad2b3ac075281431d2221db2297dc19f2ab5daad92e969fc06"

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
