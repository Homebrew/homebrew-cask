cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.9"
  sha256 arm:   "56751b6fd7a7ba534d43a5298c4f6337c275a202da8ddfe99312dc745ae0d7f1",
         intel: "c5d92a091c0bfef8d8605cac8d8ca54dd24f2ac53d856407e66dbeaa83cfe74a"

  url "https://dl-agent.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl-agent.pstmn.io/download/version/"
  name "Postman Agent"
  desc "Desktop agent for Postman on the Web"
  homepage "https://www.postman.com/downloads/postman-agent/"

  livecheck do
    url "https://dl-agent.pstmn.io/download/latest/#{arch}"
    strategy :header_match
  end

  auto_updates true

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
