cask "aqua" do
  arch arm: "-aarch64"

  version "2023.3,233.14475.33"
  sha256 arm:   "231b5f90de71c0e43c6cc87a1a1fb3b739ecff65f2bc5cb9505218b536f4d0ce",
         intel: "a3edf2990be14b7baefb747b0c1c6c092054183ca1acf492933a59f96a9553a7"

  url "https://download.jetbrains.com/aqua/aqua-#{version.csv.second}#{arch}.dmg"
  name "Aqua"
  desc "Tests writing environment"
  homepage "https://www.jetbrains.com/aqua/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=QA&latest=true&type=preview"
    strategy :json do |json|
      json["QA"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Aqua #{version.before_comma} EAP.app", target: "Aqua.app"
  binary "#{appdir}/Aqua.app/Contents/MacOS/aqua"

  zap trash: [
    "~/Library/Application Support/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Caches/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Logs/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.aqua-EAP.plist",
    "~/Library/Saved Application State/com.jetbrains.aqua-EAP.SavedState",
  ]
end
