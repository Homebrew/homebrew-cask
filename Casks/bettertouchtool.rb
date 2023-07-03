cask "bettertouchtool" do
  version "4.154,2368"
  sha256 "22b8f9bf6c709ab4c54c64110ca23ef381266aae1c2566d42e2981e6b4e2ee3a"

  url "https://folivora.ai/releases/btt#{version.csv.first}-#{version.csv.second}.zip"
  name "BetterTouchTool"
  desc "Tool to customize input devices and automate computer systems"
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

  app "BetterTouchTool.app"

  uninstall quit: "com.hegenberg.BetterTouchTool"

  zap trash: [
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
