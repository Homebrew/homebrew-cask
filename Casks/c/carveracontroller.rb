cask "carveracontroller" do
  version "0.9.11"
  sha256 "6141e600df1ef28e2b13bdee2b55594e75dd2853bdb41a91a72ee88719e0d9a3"

  url "https://github.com/MakeraInc/CarveraController/releases/download/v#{version}/CarveraController.#{version}-mac-64.dmg",
      verified: "github.com/MakeraInc/CarveraController/"
  name "CarveraController"
  desc "Control software for Makera Carvera CNCs"
  homepage "https://www.makera.com/pages/software"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "CarveraController.app"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
