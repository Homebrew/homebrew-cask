cask "chatterino" do
  version "2.5.2"
  sha256 "64d5b796dbae6ef73b7e9420df5cde01547308172a6f9f62301d879c305a674a"

  url "https://chatterino.fra1.digitaloceanspaces.com/bin/#{version}/Chatterino.dmg",
      verified: "chatterino.fra1.digitaloceanspaces.com/"
  name "Chatterino"
  desc "Chat client for https://twitch.tv"
  homepage "https://chatterino.com/"

  livecheck do
    url "https://notitia.chatterino.com/version/chatterino/macos/stable"
    strategy :json do |json|
      json["version"]
    end
  end

  app "chatterino.app"

  zap trash: "~/Library/Application Support/chatterino"
end
