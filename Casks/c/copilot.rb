cask "copilot" do
  version "3.5.20,155-c7075f96"
  sha256 "c7075f96f9571d4ce3962ec3b4706b2a321a791df5223e310053c21fc42b0e36"

  url "https://storage.googleapis.com/copilot-mac-releases/images/Copilot-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "storage.googleapis.com/copilot-mac-releases/"
  name "Copilot"
  desc "Track and budget money"
  homepage "https://copilot.money/"

  livecheck do
    url "https://releases.copilot.money/latest"
    regex(/copilot[._-](\d+(?:\.\d+)+)-(\d+)-(\w+)/i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[0]},#{match[1]}-#{match[2]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Copilot.app"

  zap trash: [
    "~/Library/Containers/com.copilot.production",
    "~/Library/Group Containers/group.com.copilot.production",
  ]
end
