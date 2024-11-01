cask "aqua" do
  arch arm: "-aarch64"

  version "2024.2.1,242.22855.128"
  sha256 arm:   "f91c189a05b98e0e0ad0ddc9d08345e80b5cd6b784689b8e75bcbc74cc61d1ff",
         intel: "e65135897e988eb01e2f78e18a92953f592ac0de07c6626780fab544affcd64e"

  url "https://download.jetbrains.com/aqua/aqua-#{version.csv.first}#{arch}.dmg"
  name "Aqua"
  desc "Tests writing environment"
  homepage "https://www.jetbrains.com/aqua/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=QA&latest=true&type=release"
    strategy :json do |json|
      json["QA"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Aqua.app"
  binary "#{appdir}/Aqua.app/Contents/MacOS/aqua"

  zap trash: [
    "~/Library/Application Support/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Caches/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Logs/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.aqua-EAP.plist",
    "~/Library/Saved Application State/com.jetbrains.aqua-EAP.SavedState",
  ]
end
