cask "codeexpander" do
  version "4.3.1"
  sha256 "d2288cf347f7c23f40e6f6ac92c3f077c1700d335c71509b52f935fdc0c0fb45"

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  name "CodeExpander"
  desc "Cloud synchronization development tool"
  homepage "https://github.com/oncework/codeexpander"

  livecheck do
    url "https://github.com/oncework/codeexpander/releases/latest"
    regex(%r{href=.*?/CodeExpander-(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  app "CodeExpander.app"

  zap trash: [
    "~/.codeexpander",
    "~/Documents/codeexpander",
    "~/Library/Logs/Codeexpander",
    "~/Library/Preferences/com.codeexpander.plist",
    "~/Library/Saved Application State/com.codeexpander.savedState",
  ]
end
