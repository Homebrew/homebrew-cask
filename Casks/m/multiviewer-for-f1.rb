cask "multiviewer-for-f1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.35.1,178178574"
    sha256 "122844369ebafb6a4b233250d226f2b4749aa90b60b2b058be5e19afa1d5dcea"
  end
  on_intel do
    version "1.35.1,178178909"
    sha256 "9710bfbcd036b0286f8703f47bb96d704140f15325cdaf6be2c80ed030e7fe6a"
  end

  url "https://releases.multiviewer.app/download/#{version.csv.second}/MultiViewer.for.F1-#{version.csv.first}-#{arch}.dmg"
  name "MultiViewer for F1"
  desc "Unofficial desktop client for F1TV"
  homepage "https://multiviewer.app/"

  livecheck do
    url "https://api.multiviewer.dev/api/v1/releases/latest"
    regex(%r{/([^/]+?)/MultiViewer[._-]for[._-]F1[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
    strategy :json do |json|
      json["downloads"].flat_map do |item|
        item["url"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end
  end

  auto_updates true

  app "MultiViewer for F1.app"

  zap trash: [
    "~/Library/Application Support/MultiViewer for F1",
    "~/Library/Caches/com.electron.multiviewer-for-f1",
    "~/Library/Caches/com.electron.multiviewer-for-f1.ShipIt",
    "~/Library/HTTPStorages/com.electron.multiviewer-for-f1",
    "~/Library/Preferences/com.electron.multiviewer-for-f1.plist",
    "~/Library/Saved Application State/com.electron.multiviewer-for-f1.savedState",
  ]
end
