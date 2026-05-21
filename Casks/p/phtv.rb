cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.1.7"
  sha256 arm:   "ef52bdbc6c9d3fdc64dda45dba0fc2e8d4ae3449b725ca0fd701fa797613b641",
         intel: "ab544539a924cfec48796dd227cbf65264bf0fff9fb901185a12f4d8546efeda"

  url "https://github.com/PhamHungTien/PHTV/releases/download/v#{version}/PHTV-#{version}-#{arch}.dmg",
      verified: "github.com/PhamHungTien/PHTV/"
  name "PHTV"
  name "Precision Hybrid Typing Vietnamese"
  desc "Vietnamese input method"
  homepage "https://phamhungtien.com/PHTV/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PHTV.app"

  zap trash: [
    "~/Library/Application Support/PHTV",
    "~/Library/Caches/com.phamhungtien.phtv",
    "~/Library/HTTPStorages/com.phamhungtien.phtv",
    "~/Library/Logs/PHTV",
    "~/Library/Preferences/com.phamhungtien.phtv.plist",
    "~/Library/Saved Application State/com.phamhungtien.phtv.savedState",
  ]

  caveats <<~EOS
    PHTV requires Accessibility and Input Monitoring permissions to type reliably.
    Open PHTV after installation and follow the in-app permission guide.
  EOS
end
