cask "chatterino" do
  version "2.5.3"
  sha256 "a53030d8aa357dc6315a140af63d287503e7dbc2352f0d821cbb36d4a09ba3b8"

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
