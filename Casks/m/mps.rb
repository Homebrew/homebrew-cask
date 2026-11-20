cask "mps" do
  version "2026.2,262.11879.701"
  sha256 "3bd01adf7cf04c51e6b3478a7f1370af7df511012ed7b87902755ad0e2806cc5"

  url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.csv.first}-macos-aarch64.dmg"
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
  depends_on arch: :arm64
  depends_on :macos

  app "MPS.app"
  command_wrapper "mps",
                  executable: "#{appdir}/MPS.app/Contents/MacOS/mps"

  zap trash: [
    "~/Library/Application Support/MPS#{version.csv.first.major_minor}",
    "~/Library/Caches/MPS#{version.csv.first.major_minor}",
    "~/Library/Logs/MPS#{version.csv.first.major_minor}",
    "~/Library/Preferences/com.jetbrains.mps.plist",
    "~/Library/Preferences/MPS#{version.csv.first.major_minor}",
    "~/MPSSamples.#{version.csv.first.major_minor}",
  ]
end
