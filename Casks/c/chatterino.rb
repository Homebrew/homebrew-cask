cask "chatterino" do
  version "2.5.1"
  sha256 "e9f3488ec32824b2b6df987d227fef2ac7132b463ea0dc58921f84587ee62840"

  url "https://chatterino.fra1.digitaloceanspaces.com/bin/#{version}/Chatterino.dmg",
      verified: "chatterino.fra1.digitaloceanspaces.com/"
  name "Chatterino"
  desc "Chat client for https://twitch.tv"
  homepage "https://chatterino.com/"

  livecheck do
    url "https://notitia.chatterino.com/version/chatterino/macos/stable"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)*(-\w+\d+)?)"/i)
  end

  app "chatterino.app"

  zap trash: "~/Library/Application Support/chatterino"
end
