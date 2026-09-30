cask "datagrip" do
  arch arm: "-aarch64"

  version "2026.2.6,262.10968.148"
  sha256 arm:   "cf9f762e3b1bc802c0f096215d30cacfe3878fa48e12233cbdaf699588c7dbb2",
         intel: "e399d79736077bf3b34cc933fa617e6e26fb3549a7908aa20cc07bd79e9f39de"

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
