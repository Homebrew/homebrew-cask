cask "mps" do
  arch arm: "macos-aarch64", intel: "macos"

  version "2023.2,232.10072.781"
  sha256 arm:   "a19ecd8a109783e9d2260cc18f48ac97e52a0bc00ee29df5ccf711a80d1701eb",
         intel: "11a635432beaca5809fe0253303d07444a0bfd6fac287c72e7b03e7a9f1a59e4"

  url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.csv.first}-#{arch}.dmg"
  name "JetBrains MPS"
  desc "Create your own domain-specific language"
  homepage "https://www.jetbrains.com/mps/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release"
    strategy :json do |json|
      json["MPS"].map do |release|
        "#{release["version"]},#{release["build"]}"
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
