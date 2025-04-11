cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.40"
  sha256 arm:   "3f4fe997a604fab3fd29da772a94147f207e00fb44b7c2a308183a8dc98bb376",
         intel: "c083d6a1f97544f439ca325e3439d7ffa7dc930941ee9b70d79ce80e08303193"

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
