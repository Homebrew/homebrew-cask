cask "brilliant" do
  version "1.8.3"
  sha256 "8ebb68210aa6fb7d2ca00b542401e434cbcafc2cdd393cd6c374766de75abbdf"

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
