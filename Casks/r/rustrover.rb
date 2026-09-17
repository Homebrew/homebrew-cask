cask "rustrover" do
  arch arm: "-aarch64"

  version "2026.2.3,262.10968.75"
  sha256 arm:   "7f5ca1ad7578606c182671b987160efd80884c3be9b55e9feb76b1150d8029dd",
         intel: "848a315742fc82666c858f89f7cfd79bfa36e81eec1840054c0b1b61a1543c9e"

  url "https://download.jetbrains.com/rustrover/RustRover-#{version.csv.first}#{arch}.dmg"
  name "RustRover"
  desc "Rust IDE"
  homepage "https://www.jetbrains.com/rust/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RR&latest=true&type=release"
    strategy :json do |json|
      json["RR"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "RustRover.app"
  command_wrapper "rustrover",
                  executable: "#{appdir}/RustRover.app/Contents/MacOS/rustrover"

  uninstall quit: "com.jetbrains.rustrover"

  zap trash: [
    "~/Library/Application Support/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Caches/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Logs/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rustrover.plist",
    "~/Library/Saved Application State/com.jetbrains.rustrover.savedState",
  ]
end
