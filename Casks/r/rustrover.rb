cask "rustrover" do
  arch arm: "-aarch64"

  version "2026.2.5,262.11879.102"
  sha256 arm:   "b54674305a661e6f89724ac1f0324f7925235e6920e9ae6b90d60699367df27b",
         intel: "43cb8ec6dd89337c3bd5a23d7023253deb6b8ee3d30386c9f4d1d7f9ad7ca3ce"

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

  uninstall launchctl: "application.com.jetbrains.app.daemon.*",
            quit:      "com.jetbrains.rustrover"

  zap trash: [
    "~/Library/Application Support/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Caches/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Logs/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rustrover.plist",
    "~/Library/Saved Application State/com.jetbrains.rustrover.savedState",
  ]
end
