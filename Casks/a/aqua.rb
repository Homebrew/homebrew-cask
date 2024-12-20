cask "aqua" do
  arch arm: "-aarch64"

  version "2024.3.1,243.22562.238"
  sha256 arm:   "ee6ae8231315aff5908d240449be182c9bab58a09ec03bc3afb302b7d7e597d2",
         intel: "2efd04de1b67a394529fb154e63c58e34654af42a5fb12b5989ab8d5a784483b"

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
