cask "brilliant" do
  version "1.7.3"
  sha256 "ed603442eb2170e8005acffcb35ac3a4d08c7c3ebc7529cc4e260fb39bdb3bd1"

  url "https://s3.eu-north-1.amazonaws.com/brilliant.design/Brilliant.Design-#{version}-Installer.dmg",
      verified: "s3.eu-north-1.amazonaws.com/brilliant.design/"
  name "Brilliant"
  desc "Design and communication tool"
  homepage "https://brilliant.design/"

  livecheck do
    url "https://brilliant.design/api/versions/info"
    strategy :json do |json|
      json.dig("latest", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Brilliant.Design.app"

  zap trash: [
    "~/.config/brilliant.design",
    "~/Library/Application Support/Brilliant",
    "~/Library/Caches/design.brilliant",
    "~/Library/Preferences/design.brilliant.plist",
  ]
end
