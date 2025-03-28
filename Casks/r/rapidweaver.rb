cask "rapidweaver" do
  version "9.4.1,21126"
  sha256 "0ecfe8b604d4f3c4e02effb7800f92cc7023150b108aaf2930cb8ab27540913d"

  url "https://dl.devant.io/v1/3c53887f-427a-4af7-9144-ee16178c62f4/#{version.csv.second}/RapidWeaver.zip",
      verified: "dl.devant.io/v1/3c53887f-427a-4af7-9144-ee16178c62f4/"
  name "RapidWeaver"
  desc "Web design software"
  homepage "https://www.realmacsoftware.com/rapidweaver/"

  livecheck do
    url "https://update.devant.io/v1/feed/3c53887f-427a-4af7-9144-ee16178c62f4"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "RapidWeaver.app"

  zap trash: [
    "~/Library/Application Scripts/*.com.realmacsoftware.rapidweaver*",
    "~/Library/Containers/com.realmacsoftware.rapidweaver*",
    "~/Library/Group Containers/*.com.realmacsoftware.rapidweaver*",
  ]
end
