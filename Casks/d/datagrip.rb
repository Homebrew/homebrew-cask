cask "datagrip" do
  arch arm: "-aarch64"

  version "2023.3.2,233.13135.68"
  sha256 arm:   "5abb6be00d9594c37a1ab5febb7855af216a8d0595f33c22e13d500c883f81ba",
         intel: "8ca630f9f6d7fc004b5d521f437a9a48616108f312558f8c1c108cb9f1c9bbb1"

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.csv.first}#{arch}.dmg"
  name "DataGrip"
  desc "Databases and SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :json do |json|
      json["DG"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DataGrip.app"
  binary "#{appdir}/DataGrip.app/Contents/MacOS/datagrip"

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
