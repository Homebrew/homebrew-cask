cask "keychron-assistant" do
  version "1.1.5"
  sha256 "af67561f3622b6b7cec86bb281dff11d7f58ef40fcfcd1e766c4b4e45f0232e9"

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
