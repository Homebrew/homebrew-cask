cask "roku-remote-tool" do
  version "4.0.5"
  sha256 :no_check

  url "https://devtools.web.roku.com/RokuRemote/app/roku-remote-tool-mac.zip"
  name "Roku Remote Tool"
  desc "Configuration tool"
  homepage "https://devtools.web.roku.com/RokuRemote/"

  livecheck do
    url "https://devtools.web.roku.com/RokuRemote/app/updates.json"
    strategy :json do |json|
      json.dig("darwin-x64-prod", "version")
    end
  end

  depends_on macos: ">= :el_capitan"

  app "roku_remote_tool.app"

  uninstall delete: [
    "~/Library/Application Support/roku_remote_tool",
    "~/Library/Logs/roku_remote_tool",
    "~/Library/Preferences/com.rokuremotetool.plist",
  ]

  caveats do
    requires_rosetta
  end
end
