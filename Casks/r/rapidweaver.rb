cask "rapidweaver" do
  version "9.3.1,21074"
  sha256 "544585393e11efe6b21477770e954fdc460d35fc0f519ee84f0a3cb469e5e0a8"

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
