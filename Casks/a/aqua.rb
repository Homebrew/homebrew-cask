cask "aqua" do
  arch arm: "-aarch64"

  version "2024.1.2,241.17011.162"
  sha256 arm:   "1a3766eb93b6fefb6c2a18c3a424309748af64981d5d2ee95114be1ddcdf5167",
         intel: "ba1918f9c91dd034e64c1d65d51b050bedaed1d7502797d38265d9d6250740c1"

  url "https://download.jetbrains.com/aqua/aqua-#{version.csv.first}#{arch}.dmg"
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

  app "Aqua.app"
  binary "#{appdir}/Aqua.app/Contents/MacOS/aqua"

  zap trash: [
    "~/Library/Application Support/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Caches/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Logs/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.aqua-EAP.plist",
    "~/Library/Saved Application State/com.jetbrains.aqua-EAP.SavedState",
  ]
end
