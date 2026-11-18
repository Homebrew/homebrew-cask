cask "rider" do
  arch arm: "-aarch64"

  version "2026.3.0.1,263.7307.325"
  sha256 arm:   "16ec16fc16a2cbaf32102086adf7f26182574d81ebed6dfc775ac3767ca8e5ab",
         intel: "34096df828e31d4684068c2d7f605a01f672e2d934ad8b1ca9fb34d63cd35b78"

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.csv.first}#{arch}.dmg"
  name "JetBrains Rider"
  desc ".NET IDE"
  homepage "https://www.jetbrains.com/rider/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
    strategy :json do |json|
      json["RD"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Rider.app"
  command_wrapper "rider",
                  executable: "#{appdir}/Rider.app/Contents/MacOS/rider"

  uninstall quit: "com.jetbrains.rider"

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rider.plist",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
