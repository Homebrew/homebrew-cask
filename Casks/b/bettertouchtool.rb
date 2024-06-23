cask "bettertouchtool" do
  version "4.600,46000"
  sha256 "e93346825c55ffc560c44ac2a5f985411c7f9807f6e014a637ddc41775d8d0ec"

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
  depends_on macos: ">= :catalina"

  app "BetterTouchTool.app"

  uninstall quit: "com.hegenberg.BetterTouchTool"

  zap trash: [
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
