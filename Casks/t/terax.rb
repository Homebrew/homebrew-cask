cask "terax" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.6"

  artifact = on_system_conditional linux: "Terax_#{version}_amd64.AppImage",
                                   macos: "Terax_#{version}_#{arch}.dmg"

  url "https://github.com/crynta/terax-ai/releases/download/v#{version}/#{artifact}",
      verified: "github.com/crynta/terax-ai/"
  name "Terax"
  desc "Terminal-first AI-native developer workspace"
  homepage "https://terax.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  on_macos do
    sha256 arm:   "7aca12b515a6916e5b3b1411ac59934d66e1d008685c2a9ce850663f4c23a67e",
           intel: "7fc6894982109cb9438e119a13f892b28c512629662b17e40e77961f6eba9f51"

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
    sha256 "32d7ebddabf6ef49f92634f5a8a34cfdf8ea75b042dceb298975ca8b6f5b67c3"

    depends_on arch: :x86_64

    app_image artifact, target: "Terax.AppImage"
  end
end
