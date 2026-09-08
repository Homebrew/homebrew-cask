cask "datagrip" do
  arch arm: "-aarch64"

  version "2026.2.5,262.10315.132"
  sha256 arm:   "f4c85cb1a1973764f84184c5fb8e4b86c7fac9aae2731e503f6f331b1217ddc8",
         intel: "76200b342b9484afee1be33ac3b15dc78d7f5b240531953904851ae2bda3bca0"

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

  uninstall quit: "com.jetbrains.datagrip"

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
