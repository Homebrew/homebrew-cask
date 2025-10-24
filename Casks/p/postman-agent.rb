cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.70"
  sha256 arm:   "55ccb6f6644ee8a7eecdd6ae8347977c3e258c959febdf50f3d2ab710d5e3bd6",
         intel: "eea203a52ec1c7cb52f0166447089cc907a3789fa2d9a427ab724837aa940645"

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
