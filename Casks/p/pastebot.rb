cask "pastebot" do
  version "3.1,31000"
  sha256 "7142a6644756cde5c7cca2b83585c13225cc0756ad2a3bc020ea2dbace85cd02"

  url "https://tapbots.net/pastebot#{version.major}/Pastebot.#{version.csv.second}.dmg"
  name "Pastebot"
  desc "Workflow application to improve productivity"
  homepage "https://tapbots.com/pastebot/"

  livecheck do
    url "https://tapbots.net/pastebot#{version.major}/update.plist"
    strategy :xml do |xml|
      versions = xml.get_elements("//key[text()='shortVersion']").map { |item| item.next_element&.text&.strip }
      builds = xml.get_elements("//key[text()='version']").map { |item| item.next_element&.text&.strip }

      versions.zip(builds).map do |version, build|
        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: "pastebot@2"
  depends_on macos: :tahoe

  app "Pastebot.app"
  command_wrapper "pastebot-tool", executable: "#{appdir}/Pastebot.app/Contents/Helpers/pastebot-tool"
  command_wrapper "pastebot-mcp", executable: "#{appdir}/Pastebot.app/Contents/Helpers/pastebot-mcp"

  uninstall quit: "com.tapbots.Pastebot#{version.major}Mac"

  zap trash: [
    "~/Library/Application Scripts/*.com.tapbots.Pastebot*Mac",
    "~/Library/Application Scripts/com.tapbots.Pastebot*Mac*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tapbots.pastebot*mac.launchhelper.sfl*",
    "~/Library/Containers/com.tapbots.Pastebot*Mac*",
    "~/Library/Group Containers/*.com.tapbots.Pastebot*Mac",
    "~/Library/Preferences/com.tapbots.Pastebot*Mac.plist",
  ]
end
