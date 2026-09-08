cask "dusklight" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "1.4.1"
  sha256 arm:          "fc6086b6d4713aff24360727510dd5997f8daeae7be7da6f5c6b7ff008cdb910",
         intel:        "76807140252bd72640c54fe063a92f58428ad567fd224600f6966f4358d73018",
         arm64_linux:  "5d9214716ae5808b2ce40104f742534e685a4d3cf83fdd3b608c02870e68c363",
         x86_64_linux: "f5dd1308c131430945cc12cdd44f22d31e3dd6ec5458498491924a5e9fa92d40"

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
