cask "datagrip" do
  arch arm: "-aarch64"

  version "2026.2.6.1,262.11879.103"
  sha256 arm:   "ea55fd674b87c983eba45a115274a623f0fb7fe3656a1dd9fed409d5f86d1d9d",
         intel: "e197923d8c2fe3aff30aa6f9ec48beda49397e0f0c1ef05cf8342210550a7477"

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

  uninstall launchctl: "application.com.jetbrains.app.daemon.*",
            quit:      "com.jetbrains.datagrip"

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
