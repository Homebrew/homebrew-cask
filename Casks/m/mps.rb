cask "mps" do
  arch arm: "macos-aarch64", intel: "macos"

  version "2024.3.1,243.24978.546"
  sha256 arm:   "d5000f7309d36ce65929bcdc85b36f543cadb2a5cc2f0675b35edb69489bde8e",
         intel: "a36d46d6a29f5f86991b1d1e8272bbc27bf00a2c5e562fe7fb3f95075badc85c"

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
