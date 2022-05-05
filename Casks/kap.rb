cask "kap" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.4"

  if Hardware::CPU.intel?
    sha256 "141c69b044887eb772688b6dc60029f4da8fac2793336c54d2777545e3324df9"
  else
    sha256 "1240b9de59eb8bc1b870deb45b2da69f3e406debcc423e7bfb574780a43a9593"
  end

  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}-#{arch}.dmg",
      verified: "github.com/wulkano/kap/"
  name "Kap"
  desc "Open-source screen recorder built with web technology"
  homepage "https://getkap.co/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Kap.app"

  zap trash: [
    "~/Library/Application Support/Kap",
    "~/Library/Caches/com.wulkano.kap",
    "~/Library/Caches/com.wulkano.kap.ShipIt",
    "~/Library/Cookies/com.wulkano.kap.binarycookies",
    "~/Library/Preferences/com.wulkano.kap.helper.plist",
    "~/Library/Preferences/com.wulkano.kap.plist",
    "~/Library/Saved Application State/com.wulkano.kap.savedState",
  ]
end
