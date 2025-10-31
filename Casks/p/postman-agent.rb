cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.71"
  sha256 arm:   "a5775f957f54f56eea94e89ca8a6406463f8f969ea9a3433c7e34b071c8c9902",
         intel: "ddf0edabce7fa649885b1106fdf23068de33299a8000c761352fcf11a0cb3c6e"

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
  depends_on macos: ">= :big_sur"

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
