cask "chatterino" do
  version "2.5.5"
  sha256 "eb2b4f48f1a96ad362c21bec6bec9ab02c662c652c963b8884dcad171ddad000"

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
