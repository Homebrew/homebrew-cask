cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.73"
  sha256 arm:   "b98e163020f2ab9e854594db03ed62559e215c42a6ae7553b399876b57c0bc33",
         intel: "31e62500e77e54c56a182fc3369a20dda18edba149ae9a78f584b31545b363b5"

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
