cask "rustrover" do
  arch arm: "-aarch64"

  version "2023.3,233.14015.147"
  sha256 arm:   "f0b462227ee0dba2d14cc4ea2bde8216a75e0a145be2fac4b922fcbe08230022",
         intel: "efdbcac188e71beb0ed7cbf6a986d77d372693ca0481caadcf02620f31f072a9"

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
