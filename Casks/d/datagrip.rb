cask "datagrip" do
  arch arm: "-aarch64"

  version "2024.1.2,241.15989.49"
  sha256 arm:   "583c32f39918681673028a20cb911a41fc4495cf44c151c0790594042ec9e160",
         intel: "41a4dabdd2ad97387d806742c41b34e5a1544860c159f5d71c09b00a1e605356"

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.csv.first}#{arch}.dmg"
  name "DataGrip"
  desc "Databases and SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :json do |json|
      json["DG"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DataGrip.app"
  binary "#{appdir}/DataGrip.app/Contents/MacOS/datagrip"

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
