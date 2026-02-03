cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.86"
  sha256 arm:   "5cf5bfd649800abfc2f64e3d5daece3749949e26b77c36c6e837d9dafa86408e",
         intel: "a9c131303e57d8bc1d604f485b1dd22fbe08d992b6e15f66e622421ebbc3a272"

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
