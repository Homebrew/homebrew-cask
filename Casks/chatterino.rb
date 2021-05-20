cask "chatterino" do
  version "2.3.2"
  sha256 "43b781c64878f0bee75a035dd8ec2f213aead71bb35bd5458d713513594cf86c"

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
