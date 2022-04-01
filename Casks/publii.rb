cask "publii" do
  version "0.38.3"
  sha256 "24d3dc60779eba8ea366613bc6318e3bb1739984a4281544743a86fce9398f8a"

  url "https://cdn.getpublii.com/Publii-#{version}.dmg"
  name "Publii"
  desc "Static website generator"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
    regex(%r{href=.*?/Publii-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
