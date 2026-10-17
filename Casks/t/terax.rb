cask "terax" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.9.0"
  sha256 arm:          "e87dcaf5b50d6afc7fd42bb024404c06326e7ec5f41c0d0e0be5c3824ba3e25e",
         intel:        "3d7bcecebb59ef3b7cadaac41ad1f2fd7ee2c958c7110def05571d63ac26a739",
         x86_64_linux: "3b1ec084e24ee3b41d00a55a552455d53887094acd37858f7dae4aac7052cf5b"

  on_macos do
    depends_on macos: :ventura

    app "Terax.app"

    zap trash: [
      "~/Library/Application Support/app.crynta.terax",
      "~/Library/Caches/app.crynta.terax",
      "~/Library/Caches/terax",
      "~/Library/Logs/app.crynta.terax",
      "~/Library/Preferences/app.crynta.terax.plist",
      "~/Library/WebKit/app.crynta.terax",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Terax_#{version}_#{arch}.AppImage", target: "Terax.AppImage"
  end

  url "https://github.com/crynta/terax-ai/releases/download/v#{version}/Terax_#{version}_#{arch}.#{os}"
  name "Terax"
  desc "Terminal-first AI-native developer workspace"
  homepage "https://terax.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
end
