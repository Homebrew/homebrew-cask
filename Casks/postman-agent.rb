cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.7"
  sha256 arm:   "e76fb6b2c1198c9591be5a711d22d9391a6859ad059b45af111f0f385be16190",
         intel: "d479f55963ce5fe56f67fb03f349732790511c3c6943e256e6193bae15498af1"

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
