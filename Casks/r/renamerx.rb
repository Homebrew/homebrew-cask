cask "renamerx" do
  version "1.2.2"
  sha256 "4118ef8671c72e9f9be48fc0d8e7c96dae6a0cc05c3907a91348ac126ed38f13"

  url "https://downloads.renamerx.com/desktop/stable/download/v#{version}/RenamerX_#{version}_universal.dmg"
  name "RenamerX"
  desc "AI file renamer with templates, review, and undo"
  homepage "https://renamerx.com/"

  livecheck do
    url "https://downloads.renamerx.com/desktop/stable/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :catalina

  app "RenamerX.app"

  zap trash: [
    "~/Library/Application Support/com.sancijun.renamerx",
    "~/Library/Caches/com.sancijun.renamerx",
    "~/Library/Preferences/com.sancijun.renamerx.plist",
    "~/Library/WebKit/com.sancijun.renamerx",
  ]
end
