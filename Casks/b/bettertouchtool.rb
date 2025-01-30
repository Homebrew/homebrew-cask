cask "bettertouchtool" do
  version "5.149,2025013002"
  sha256 "5cdefd0f7dd86c7d71c2adc0094f38fa03d936930a3d7108fbd479457e8a89ae"

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
  depends_on macos: ">= :big_sur"

  app "BetterTouchTool.app"

  uninstall quit: "com.hegenberg.BetterTouchTool"

  zap trash: [
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
