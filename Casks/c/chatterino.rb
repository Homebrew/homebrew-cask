cask "chatterino" do
  version "2.5.6"
  sha256 "38c14d1023f57716e30f09e0c28f931eb80404b21fe7ff7736136b63893653b5"

  url "https://chatterino.fra1.digitaloceanspaces.com/bin/#{version}/Chatterino.dmg"
  name "Chatterino"
  desc "Chat client for https://twitch.tv"
  homepage "https://chatterino.com/"

  livecheck do
    url "https://notitia.chatterino.com/version/chatterino/macos/stable"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  app "chatterino.app"

  zap trash: "~/Library/Application Support/chatterino"
end
