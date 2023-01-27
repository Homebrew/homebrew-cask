cask "gittyup" do
  version "1.2.2"
  sha256 "33809a904bae213fe9b56c578b3ef72e74e3189c10dbb3267bdb543f17959028"

  url "https://github.com/Murmele/Gittyup/releases/download/gittyup_v#{version}/Gittyup-#{version}.dmg",
      verified: "github.com/Murmele/Gittyup/"
  name "gittyup"
  desc "Graphical Git client"
  homepage "https://murmele.github.io/Gittyup/"

  livecheck do
    url "https://github.com/Murmele/Gittyup/releases/latest"
    regex(%r{href=.*?/Gittyup-(\d+(?:\.\d+)+)\.dmg}i)
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

  auto_updates true

  app "Gittyup.app"

  zap trash: [
    "~/Library/Application Support/Gittyup",
    "~/Library/Preferences/com.Murmele.Gittyup.plist",
    "~/Library/Preferences/com.github.gittyup.Gittyup.plist",
    "~/Library/Saved Application State/com.Murmele.Gittyup.savedState",
  ]
end
