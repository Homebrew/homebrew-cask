cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.79"
  sha256 arm:   "07c822c48f552aa908d355aa5ce2989ab42ccfba890f2f359020c60d350c4a64",
         intel: "4947f0ad440c52d07d4446acb45e0582ee79c31821f89176160f957455d835c8"

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
