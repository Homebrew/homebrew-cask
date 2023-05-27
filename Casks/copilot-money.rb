cask "copilot-money" do
  version "3.1.9-90-c7a9d755"
  sha256 "c7a9d755adaf51e4f343e2db6b82b1f8aa113cb3f0d058d31ef2f928ad3f1a4f"

  url "https://storage.googleapis.com/copilot-mac-releases/images/Copilot-#{version}.dmg",
      verified: "storage.googleapis.com/copilot-mac-releases/"
  name "Copilot"
  desc "Track and budget money"
  homepage "https://copilot.money/"

  livecheck do
    url "https://releases.copilot.money/latest"
    strategy :header_match
    regex(/Copilot-(\d+(?:\.\d+)+-\d+-[0-9a-f]+)/)
  end

  app "Copilot.app"

  zap trash: [
    "~/Library/Containers/com.copilot.production",
    "~/Library/Group Containers/group.com.copilot.production",
  ]
end
