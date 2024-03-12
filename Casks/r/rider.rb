cask "rider" do
  arch arm: "-aarch64"

  version "2023.3.4,233.14475.66"
  sha256 arm:   "8ffd13dcc2207d4a781dc92e89643767e0dd6ef53024c92669f4daaf9cf929c0",
         intel: "00435dc8d9dd43bbd73a55be7d5b304be8ee124032a7485750aef86cddc53ba2"

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.csv.first}#{arch}.dmg"
  name "JetBrains Rider"
  desc ".NET IDE"
  homepage "https://www.jetbrains.com/rider/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
    strategy :json do |json|
      json["RD"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Rider.app"
  binary "#{appdir}/Rider.app/Contents/MacOS/rider"

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
