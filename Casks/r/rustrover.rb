cask "rustrover" do
  arch arm: "-aarch64"

  version "2026.2.4,262.10968.211"
  sha256 arm:   "cc4bcbf1488d178b3f49c17752d576348f231b28b15de03dcdde50fb75b87680",
         intel: "5a87421aa772d7e773f00d14fc917432a563c74de7608272349895aa00cd0c3c"

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
