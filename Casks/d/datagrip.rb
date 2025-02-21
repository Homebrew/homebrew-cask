cask "datagrip" do
  arch arm: "-aarch64"

  version "2024.3.5,243.24978.79"
  sha256 arm:   "1ba33de8b5595a7ab3ab683ed21200c6c884c7c9299a9dfe4414ae29b219dc09",
         intel: "224a58410ef3e067b0c848607d34f5ac180e76ef95ebd1a9f7a34202d36ea278"

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.csv.first}#{arch}.dmg"
  name "DataGrip"
  desc "Databases and SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :json do |json|
      json["DG"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
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
