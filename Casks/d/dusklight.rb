cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.0.2"
  sha256 arm:          "87efca17feb303d1f16d6e3206c12e4d786520eff436b4485f15de0a64c01a65",
         intel:        "ba3e6cd572009d1bf36f3bf813cf7c03199192bbcee08c79da82caae2dc436cc",
         arm64_linux:  "af9e818658ef1bb73390a4503bd5bb16224cb358c0d910fcbafe72529d5854ee",
         x86_64_linux: "deeb730e8612a55e2da9cd7641f9a9e2dee23d4ba41a88dbd06e94bb36159a43"

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
