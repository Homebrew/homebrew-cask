cask "sqlight" do
  version "3.0.0.0"
  sha256 "3ffa14419fced3f864f9ff2472987c8bc3e5743c9f960ffe52245e3bb0d401f2"

  url "https://www.aurvan.com/com-aurvan-satva-ui-reactjs-dossier/sqlight-v#{version.dots_to_underscores}-app.dmg"
  name "SQLight"
  desc "Database management tool"
  homepage "https://www.aurvan.com/sqlight/"

  # The download page is rendered using JavaScript with the download links obtained
  # from https://www.aurvan.com/com-aurvan-satva-ui-reactjs-release/static/js/main.<hash>.chunk.js
  # Since the <hash> is not fixed in the filename, the current JavaScript file
  # needs to be extracted from the download page.
  livecheck do
    url "https://www.aurvan.com/sqlight/"
    strategy :page_match do |page|
      js_file = page[%r{src=["']?(/com-aurvan-satva-ui-reactjs-release/static/js/main\.\w+\.chunk.js)["' >]}i, 1]
      version_page = Homebrew::Livecheck::Strategy.page_content("https://www.aurvan.com/#{js_file}")
      version_page[:content].scan(/sqlight-v?(\d+(?:[._]\d+)+)-app\.dmg/i).flatten.map { |v| v.tr("_", ".") }
    end
  end

  app "SQLight.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aurvan.sqlight.macosx.sfl*",
    "~/Library/Caches/com.aurvan.sqlight.macosx",
    "~/Library/Preferences/com.aurvan.sqlight.macosx.plist",
    "~/Library/Saved Application State/com.aurvan.sqlight.macosx.savedState",
  ]
end
