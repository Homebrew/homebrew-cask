cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.89"
  sha256 arm:   "fbe0591f68879a5cf29154f689ba01e1267d803de04134f2eb65a4d886550630",
         intel: "f866c8d0ea1db0aa8a594a9af9bf1ef90381bc1c2fd0b09f2da201cc616df419"

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
  depends_on macos: :big_sur

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
