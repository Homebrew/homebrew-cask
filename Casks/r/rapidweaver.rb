cask "rapidweaver" do
  version "9.6.5,21150"
  sha256 "098c33369f1e22d1d6b9d6193461db3b8d6e3dca6dfe62f2d95a6ba8ed726c8b"

  url "https://dl.devant.io/v1/3c53887f-427a-4af7-9144-ee16178c62f4/#{version.csv.second}/RapidWeaver.zip",
      verified: "dl.devant.io/v1/3c53887f-427a-4af7-9144-ee16178c62f4/"
  name "RapidWeaver"
  desc "Web design software"
  homepage "https://www.realmacsoftware.com/rapidweaver/"

  livecheck do
    url "https://update.devant.io/v1/feed/3c53887f-427a-4af7-9144-ee16178c62f4"
    strategy :sparkle
  end

  app "RapidWeaver.app"

  zap trash: [
    "~/Library/Application Scripts/*.com.realmacsoftware.rapidweaver*",
    "~/Library/Containers/com.realmacsoftware.rapidweaver*",
    "~/Library/Group Containers/*.com.realmacsoftware.rapidweaver*",
  ]
end
