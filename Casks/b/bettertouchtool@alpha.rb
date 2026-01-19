cask "bettertouchtool@alpha" do
  version "6.071,2026011902"
  sha256 "c53367804dfc4654639e38d4ee219d13875b5442c842ceee3e29f49d65a56cad"

  url "https://folivora.ai/releases/btt#{version.csv.first}-#{version.csv.second}.zip"
  name "BetterTouchTool"
  desc "Tool to customise input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://folivora.ai/releases/"
    regex(/btt(\d+(?:[._-]\d+)*)\.zip.*?(\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2})/i)
    strategy :page_match do |page, regex|
      current_version, current_build = version.csv
      version, build = page.scan(regex).max_by { |match| Time.parse(match[1]) }&.first&.split("-", 2)

      # Throttle updates to every 5th release.
      if build && current_build.to_i + 5 > build.to_i
        version = current_version
        build = current_build
      end

      "#{version},#{build}"
    end
  end

  auto_updates true
  conflicts_with cask: "bettertouchtool"
  depends_on macos: ">= :big_sur"

  app "BetterTouchTool.app"

  uninstall quit: "com.hegenberg.BetterTouchTool"

  zap trash: [
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
