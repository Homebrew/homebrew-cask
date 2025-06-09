cask "brilliant" do
  version "1.7.1"
  sha256 "cb27c7fb9ddb0fb38e3160aa92a4cb2d780ef05877034524178fcd51f386e347"

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
