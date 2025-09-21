cask "chatterino" do
  version "2.5.4"
  sha256 "8ca8983e7c6995f1870ee4850902755cdb2b5e529c16763dcb61ed16f74d166d"

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

  depends_on macos: ">= :big_sur"

  app "chatterino.app"

  zap trash: "~/Library/Application Support/chatterino"
end
