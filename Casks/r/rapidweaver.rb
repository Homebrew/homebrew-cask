cask "rapidweaver" do
  version "9.6.8,21159"
  sha256 "3f36c8bded3b4afd42307c3e2c393c9a49df3beea763984d3718373eeaadcbd6"

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
