cask "multiviewer-for-f1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.33.0,173886776"
    sha256 "107755e519a8eadb22ab82be4450dfbd1eda2313117ec44bb5bd3ef607d5f1cc"
  end
  on_intel do
    version "1.33.0,173887581"
    sha256 "2dc319a5bb62781bcd35b1678a9af7625f25acd9a0a3a9741eb7fb8b014570a1"
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
