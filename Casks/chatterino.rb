cask "chatterino" do
  version "2.3.1"
  sha256 "76d6f706967aadf0ab6bec460f6d5b0aaf9d7b95bc92dbe9f5057b037ce9d2f8"

  url "https://chatterino.fra1.digitaloceanspaces.com/bin/#{version}/Chatterino.dmg",
      verified: "chatterino.fra1.digitaloceanspaces.com/"
  name "Chatterino"
  desc "Chat client for https://twitch.tv"
  homepage "https://chatterino.com/"

  livecheck do
    url "https://notitia.chatterino.com/version/chatterino/macos/stable"
    strategy :page_match
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)*(-\w+\d+)?)"/i)
  end

  app "chatterino.app"

  zap trash: "~/Library/Application Support/chatterino"
end
