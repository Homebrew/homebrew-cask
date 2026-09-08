cask "readest" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.12.8"

  on_macos do
    sha256 "a907e243089e6b286ab116d0780ed387209ad3b6b0e283ac2b55b229ec4d78de"

    auto_updates true
    depends_on macos: :monterey

    app "Readest.app"

    zap trash: [
      "~/Library/Application Support/com.bilingify.readest",
      "~/Library/Caches/com.bilingify.readest",
      "~/Library/Caches/readest",
      "~/Library/Preferences/com.bilingify.readest.plist",
      "~/Library/WebKit/com.bilingify.readest",
      "~/Library/WebKit/readest",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "c84c0323d2393f8056add9976a08288b04838004b4aa57a29b15f1460e71c66d",
           x86_64_linux: "cce504243db5dd877fa4fc8c61f50934eff138262d3737a52198be1c5f855de7"

    app_image "Readest_#{version}_#{arch}.AppImage", target: "Readest.AppImage"
  end

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_#{os}"
  name "Readest"
  desc "Ebook reader"
  homepage "https://readest.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
