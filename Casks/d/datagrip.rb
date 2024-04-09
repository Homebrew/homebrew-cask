cask "datagrip" do
  arch arm: "-aarch64"

  version "2024.1.1,241.14494.283"
  sha256 arm:   "c2545df9784fa1f8f9234dd93d1c513ed691c797f26471cb545188ce7f495864",
         intel: "232582204a6f810bcbd2387ba2cef824f0f81c3a7e022f7f2bebf643d32f866d"

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
