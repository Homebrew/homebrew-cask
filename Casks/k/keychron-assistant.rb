cask "keychron-assistant" do
  version "1.1.6"
  sha256 "6559c86ee361761c7dd95e25fe0979f2666aff22daf7b1a498e6b27a9f78f83a"

  url "https://launcher.keychron.com/static/assist/KeychronAssist-#{version}.dmg"
  name "Keychron Assistant"
  desc "Companion app for Keychron Launcher's Quick Start feature"
  homepage "https://www.keychron.com/blogs/news/how-to-download-and-install-keychron-assist"

  livecheck do
    url "https://launcher.keychron.com/"
    regex(/keychronAssistVersion:\s*["']v?(\d+(?:\.\d+)+)["']/i)
    strategy :page_match do |page, regex|
      js_path = page[/src=["']?([^"' >]*?main[._-]\h+\.js)["' >]/i, 1]
      next unless js_path

      js_page = Homebrew::Livecheck::Strategy.page_content(
        URI.join("https://launcher.keychron.com/", js_path).to_s,
      )
      next if (js_content = js_page[:content]).blank?

      js_content[regex, 1]
    end
  end

  depends_on :macos

  app "Keychron-Assistant.app"

  zap trash: [
    "~/Library/Application Support/com.keychron.assist",
    "~/Library/Caches/com.keychron.assist",
    "~/Library/Logs/com.keychron.assist",
    "~/Library/Preferences/com.keychron.assist.plist",
  ]
end
