cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.65"
  sha256 arm:          "fc18058ec19abef8f7292f8d7aed6c2e1059cdc36e6cb2257cb6bcf7fa34ae33",
         intel:        "1408c35ec442ae68c1d3d7d9d8f266f311b6552b2dc03b4852e7d67d15eba643",
         arm64_linux:  "0a0443dec1c5e696075b966862590f934b55189b3a2fcee92a1f35aa65a8c91e",
         x86_64_linux: "1bda6535e7b5c9c3c848b1a29864bd93189b8c7a4cc57115d3b7812b857a1776"

  url_end = on_system_conditional macos: ".dmg", linux: ".AppImage"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}#{url_end}",
      verified: "github.com/t8y2/dbx/"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
    ]
  end

  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end
end
