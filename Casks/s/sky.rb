cask "sky" do
  version "0.5.2"
  sha256 "ae823d8926471c64f35735f6b36a07e9d342ce4057d27dc4242e19a1f454b209"

  url "https://github.com/jcsalterego/Sky.app/releases/download/#{version}/Sky.#{version}.dmg"
  name "Sky"
  desc "Bluesky Social client"
  homepage "https://github.com/jcsalterego/Sky.app"

  depends_on macos: ">= :big_sur"

  app "Sky.app"

  zap trash: [
    "~/Library/Application Scripts/jcsalterego.Sky",
    "~/Library/Containers/jcsalterego.Sky",
  ]
end
