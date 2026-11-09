cask "constly" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.14.1"
  sha256 arm:   "e6747e190cdc1b93ed3dd1b8accf0b97582b61989ec6225f07af2e6a1b0a4b37",
         intel: "449435fef10aa8b6a511530fe35ca47fe943f63a42871f4b16cbe7d688aa6717"

  url "https://downloads.constly.com/v#{version}/Constly_#{version}_#{arch}.dmg"
  name "Constly"
  desc "WYSIWYG markdown editor that renders the marks away as you type"
  homepage "https://constly.com/"

  livecheck do
    url "https://downloads.constly.com/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Constly.app"

  zap trash: [
    "~/Library/Application Support/com.constly.app",
    "~/Library/Caches/com.constly.app",
    "~/Library/HTTPStorages/com.constly.app",
    "~/Library/Preferences/com.constly.app.plist",
    "~/Library/WebKit/com.constly.app",
  ]
end
