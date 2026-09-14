cask "terax" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.8.6"
  sha256 arm:          "7aca12b515a6916e5b3b1411ac59934d66e1d008685c2a9ce850663f4c23a67e",
         intel:        "7fc6894982109cb9438e119a13f892b28c512629662b17e40e77961f6eba9f51",
         x86_64_linux: "32d7ebddabf6ef49f92634f5a8a34cfdf8ea75b042dceb298975ca8b6f5b67c3"

  on_macos do
    depends_on macos: :ventura

    app "Terax.app"

    zap trash: [
      "~/Library/Application Support/app.crynta.terax",
      "~/Library/Caches/app.crynta.terax",
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
