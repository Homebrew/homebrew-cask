cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.87"
  sha256 arm:   "fb43930cb2873fba79fae7ce5e8db927bd09c3989531cdcdb1eb6fbd3e49282e",
         intel: "654b3c7f08a3cfee9352f99ae21a32ca7fcb26c8f825f5634c7aa53ca23459ce"

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
