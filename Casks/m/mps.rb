cask "mps" do
  arch arm: "macos-aarch64", intel: "macos"

  version "2024.1.1,241.19072.1155"
  sha256 arm:   "381b6c527f444ca2ea652054e172afee2096c29ad445cec7fa7fe6432cb41bea",
         intel: "85f936a8d4a610b0232f5716f364cfae6edac5322fd40714c07e9ffabb11e85a"

  url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.csv.first}-#{arch}.dmg"
  name "JetBrains MPS"
  desc "Create your own domain-specific language"
  homepage "https://www.jetbrains.com/mps/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release"
    strategy :json do |json|
      json["MPS"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "MPS #{version.major_minor}.app", target: "MPS.app"
  binary "#{appdir}/MPS.app/Contents/MacOS/mps"

  zap trash: [
    "~/Library/Application Support/MPS#{version.csv.first.major_minor}",
    "~/Library/Caches/MPS#{version.csv.first.major_minor}",
    "~/Library/Logs/MPS#{version.csv.first.major_minor}",
    "~/Library/Preferences/MPS#{version.csv.first.major_minor}",
    "~/MPSSamples.#{version.csv.first.major_minor}",
  ]
end
