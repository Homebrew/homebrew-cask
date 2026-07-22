cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.63"
  sha256 arm:          "8c0a98787256e333dc6a66fe77cb5ad998986286c00b873204d9c3177114a09a",
         intel:        "b0540b4c9e51e668777b0f0930d10e2772af627f9090d1cf0dac8ea8cfb6ff5f",
         arm64_linux:  "ebbb04c28c387bd7efe00b0a5ee96c2072862c12cd104ad3cdf25c394a51afac",
         x86_64_linux: "545e13fb9ed4daec6a406a9483e33d48e9742902bcfbeed47fcd88741432dcb1"

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
