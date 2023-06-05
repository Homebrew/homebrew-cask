cask "gittyup" do
  version "1.3.0"
  sha256 "8582bc3e8628523d08515356a7e9655e519e2872dbfdcc6f2925a80188ac5ac6"

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
