cask "keychron-assistant" do
  version "1.1.5"
  sha256 "af67561f3622b6b7cec86bb281dff11d7f58ef40fcfcd1e766c4b4e45f0232e9"

  url "https://launcher.keychron.com/static/assist/KeychronAssist-#{version}.dmg"
  name "Keychron Assistant"
  desc "Companion app for Keychron Launcher's Quick Start feature"
  homepage "https://www.keychron.com/blogs/news/how-to-download-and-install-keychron-assist"

  livecheck do
    url "https://launcher.keychron.com/"
    strategy :page_match do |page|
      main_js = page[/src="main\.([a-f0-9]+)\.js"/, 1]
      next if main_js.blank?

      js_page = Homebrew::Livecheck::Strategy.page_content("https://launcher.keychron.com/main.#{main_js}.js")
      next if (js_content = js_page[:content]).blank?

      js_content[/keychronAssistVersion:"(\d+(?:\.\d+)+)"/, 1]
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
