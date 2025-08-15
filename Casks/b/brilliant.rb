cask "brilliant" do
  version "1.8.8"
  sha256 "0d6397ef0a6dfde5fcb0fff23644284114095d1bc8aa68b4ea8420d3008ea071"

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
