cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.50"
  sha256 arm:   "272196962d7eeef269a45c7a13447409588e0eb9d52841378a1c25a3d832c784",
         intel: "e3296899e1cac19386d74fce1dc2b75af309bae4af0205d9d6f3245752057a77"

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
