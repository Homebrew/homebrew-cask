cask "mdhero" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "dmg", linux: "AppImage"

  version "0.2.10"
  sha256 arm:          "ecad9453ef0fb7333408a3d4faf16a438bced2597fa2ceb3e1caa852a7834309",
         arm64_linux:  "9e4c5ca2045a76938ce4ce0cfc6cc431fc2065f9ae4ff2f564023e703ac7a45a",
         x86_64_linux: "975961924286a238cb38f7d31ab644046af792eabef66bbe6f4c044502c25a90"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :monterey

    app "MDHero.app"

    zap trash: [
      "~/Library/Application Scripts/com.mdhero.app.quicklook",
      "~/Library/Application Support/com.mdhero.app",
      "~/Library/Caches/com.mdhero.app",
      "~/Library/Containers/com.mdhero.app.quicklook",
      "~/Library/WebKit/com.mdhero.app",
    ]
  end
  on_linux do
    app_image "MDHero_#{version}_#{arch}.#{os}", target: "MDHero.AppImage"

    zap trash: [
      "~/.config/com.mdhero.app",
      "~/.local/share/com.mdhero.app",
    ]
  end

  url "https://github.com/vaibhav-kakde-in/mdhero/releases/download/v#{version}/MDHero_#{version}_#{arch}.#{os}"
  name "MDHero"
  desc "Markdown viewer and editor"
  homepage "https://mdhero.app/"
end
