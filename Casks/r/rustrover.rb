cask "rustrover" do
  arch arm: "-aarch64"

  version "2025.1,251.23774.445"
  sha256 arm:   "4ee23c7ec5a85e8e42d9d74fb86e03ce9cac8e1d0c827df42360375fd912e81b",
         intel: "b0b41fbcb264aec50022800fb2930e3686d2f9dad07acc49621c85dfc3d4a193"

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
  depends_on macos: ">= :high_sierra"

  app "RustRover.app"
  binary "#{appdir}/RustRover.app/Contents/MacOS/rustrover"

  zap trash: [
    "~/Library/Application Support/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Caches/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Logs/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rustrover.plist",
    "~/Library/Saved Application State/com.jetbrains.rustrover.savedState",
  ]
end
