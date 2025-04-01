cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.39"
  sha256 arm:   "c1d9f6a7bc41ed6e60865b26ae3e8597cebaca0a3d92291d6f24082abeee6c72",
         intel: "c92af6d521b747bad3ae1c9d61eefa70cdaa0f9110d9ff028efe57594e41cb97"

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
  depends_on macos: ">= :catalina"

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
