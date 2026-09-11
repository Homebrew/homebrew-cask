cask "rustrover" do
  arch arm: "-aarch64"

  version "2026.2.2,262.10315.167"
  sha256 arm:   "61c626adb68a85d8b4360723c4df1960882015426b6622a9178ddaa21b4985ba",
         intel: "1b3df07265e5b71f3faae739789f4cce25f4ecb8a65dde8058b339aa3e5c111e"

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
