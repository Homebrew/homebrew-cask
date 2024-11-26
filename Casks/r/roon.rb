cask "roon" do
  version "2.0.44"
  sha256 :no_check

  url "https://download.roonlabs.net/builds/Roon.dmg",
      verified: "download.roonlabs.net/"
  name "Roon"
  desc "Music player"
  homepage "https://roonlabs.com/"

  livecheck do
    url "https://community.roonlabs.com/c/roon/software-release-notes/18.json"
    regex(/Roon\s+v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("topic_list", "topics")&.map do |item|
        item["title"]&.match(regex) { |match| match[1] }
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Roon.app"

  uninstall quit:       "RoonServer",
            login_item: "RoonServer"

  zap trash: [
    "~/Library/Roon",
    "~/Library/RoonGoer",
    "~/Library/RoonServer",
    "~/Library/Saved Application State/com.roon.Roon.savedState",
  ]
end
