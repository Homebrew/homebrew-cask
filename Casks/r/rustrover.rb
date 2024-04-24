cask "rustrover" do
  arch arm: "-aarch64"

  version "2024.1,241.15989.101"
  sha256 arm:   "1d63faf3d687508b976989768ee44ac3632017d55fce0557591dff2eae37d6a2",
         intel: "c0b5885e7d85cc89d79110b4a56c3a08784c43b03e42686ec91cd4679bf9f469"

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
