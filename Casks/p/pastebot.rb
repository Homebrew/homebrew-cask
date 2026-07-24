cask "pastebot" do
  version "3.0,30000"
  sha256 "22fd4d29482c0c04012ecbbdd918ca60b372d79dd7caabb2eb4671e9ddd69862"

  url "https://tapbots.net/pastebot#{version.major}/Pastebot.#{version.csv.second}.dmg",
      verified: "tapbots.net/"
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
  depends_on macos: :tahoe

  app "Pastebot.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/pasteboot-tool.wrapper.sh"
  binary shimscript, target: "pastebot-tool"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/Pastebot.app/Contents/Helpers/pastebot-tool' "$@"
    EOS
  end

  uninstall quit: "com.tapbots.Pastebot#{version.major}Mac"

  zap trash: [
    "~/Library/Application Scripts/*.com.tapbots.Pastebot#{version.major}Mac",
    "~/Library/Application Scripts/com.tapbots.Pastebot#{version.major}Mac*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tapbots.pastebot#{version.major}mac.launchhelper.sfl*",
    "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac*",
    "~/Library/Group Containers/*.com.tapbots.Pastebot#{version.major}Mac",
    "~/Library/Preferences/com.tapbots.Pastebot#{version.major}Mac.plist",
  ]
end
