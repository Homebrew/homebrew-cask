cask "datagrip" do
  arch arm: "-aarch64"

  version "2026.2.4,262.10315.24"
  sha256 arm:   "9376c602f08619fb30a3d2c292609b6aa73c653ab771d7e3d93ef7f9e573c56f",
         intel: "03c66fcf24f41ec70f74dc0472c9bb5f03e92b02b80352b035bc30aa8f7c6e6b"

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
  depends_on :macos

  app "DataGrip.app"
  command_wrapper "datagrip",
                  executable: "#{appdir}/DataGrip.app/Contents/MacOS/datagrip"

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
