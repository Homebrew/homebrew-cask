cask "mps" do
  arch arm: "macos-aarch64", intel: "macos"

  version "2026.1.1,261.25134.877"
  sha256 arm:   "b9170dce0b47f55513ced9f81614064043ead0a5eef52aaf9487cf04fbd78c9b",
         intel: "817e93a2a9637802efdb3a24fa8dfee06345c13f40466c74a51a376bcfe3aae2"

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
  depends_on :macos

  app "MPS.app"
  command_wrapper "mps",
                  executable: "#{appdir}/MPS.app/Contents/MacOS/mps"

  zap trash: [
    "~/Library/Application Support/MPS#{version.csv.first.major_minor}",
    "~/Library/Caches/MPS#{version.csv.first.major_minor}",
    "~/Library/Logs/MPS#{version.csv.first.major_minor}",
    "~/Library/Preferences/MPS#{version.csv.first.major_minor}",
    "~/MPSSamples.#{version.csv.first.major_minor}",
  ]
end
