cask "roku-remote-tool" do
  version "4.0.5.1327"
  sha256 :no_check

  url "https://devtools.web.roku.com/RokuRemote/app/roku-remote-tool-mac.zip"
  name "Roku Remote Tool"
  desc "Configuration tool"
  homepage "https://devtools.web.roku.com/RokuRemote/electron.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "roku_remote_tool.app"

  uninstall delete: [
    "~/Library/Application Support/roku_remote_tool",
    "~/Library/Preferences/com.rokuremotetool.plist",
    "~/Library/Logs/roku_remote_tool",
  ]
end
