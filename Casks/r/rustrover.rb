cask "rustrover" do
  arch arm: "-aarch64"

  version "2023.3,233.14015.152"
  sha256 arm:   "598e57d082db05fcc38d2eee5d307e3a9c0912c0a8c41e1d4d6a1b8076c25c24",
         intel: "c6c17c017b202401150aa54a727f3ea68a4848e96d69f47ea276ed68be682d45"

  url "https://download.jetbrains.com/rustrover/RustRover-#{version.csv.second}#{arch}.dmg"
  name "RustRover"
  desc "Rust IDE"
  homepage "https://www.jetbrains.com/rust/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RR&latest=true&type=eap"
    strategy :json do |json|
      json["RR"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "RustRover #{version.before_comma} EAP.app", target: "RustRover.app"
  binary "#{appdir}/RustRover.app/Contents/MacOS/rustrover"

  zap trash: [
    "~/Library/Application Support/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Caches/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Logs/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rustrover-EAP.plist",
    "~/Library/Saved Application State/com.jetbrains.rustrover-EAP.SavedState",
  ]
end
