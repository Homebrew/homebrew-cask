cask "roku-remote-tool" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 :no_check

  url "https://devtools.web.roku.com/RokuRemote/app/mac/roku-remote-tool-mac-#{arch}.zip"
  name "Roku Remote Tool"
  desc "Configuration tool"
  homepage "https://devtools.web.roku.com/RokuRemote/"

  livecheck do
    url "https://devtools.web.roku.com/RokuRemote/app/updates.json"
    strategy :json do |json|
      json.dig("darwin-#{arch}-prod", "version")
    end
  end

  app "roku_remote_tool.app"

  zap trash: [
    "~/Library/Application Support/roku_remote_tool",
    "~/Library/Logs/roku_remote_tool",
    "~/Library/Preferences/com.rokuremotetool.plist",
  ]
end
