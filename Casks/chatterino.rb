cask "chatterino" do
  version "2.3.1"
  sha256 "0622d1c22bc95ad5ae35d329015afa35fc8ca3b0bb45d35dad19c64829ea7cb3"

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
