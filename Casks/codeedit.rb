cask "codeedit" do
  version "0.0.3-alpha.32,8b75b20"
  sha256 "56ef6b7c0eca50e528629a716e5367dc72902ede875d6f9d3780e93245e884c6"

  url "https://github.com/CodeEditApp/CodeEdit/releases/download/#{version.csv.first}/CodeEdit-#{version.csv.second}.dmg",
      verified: "github.com/CodeEditApp/CodeEdit/"
  name "CodeEdit"
  desc "Code editor"
  homepage "https://www.codeedit.app/"

  livecheck do
    url "https://github.com/CodeEditApp/CodeEdit/releases/latest"
    regex(%r{href=.*?/download/\D*?([^/]+?)/CodeEdit[._-]([a-f0-9]+)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :monterey"

  app "CodeEdit.app"

  zap trash: [
    "~/Library/Application Scripts/austincondiff.CodeEdit.OpenWithCodeEdit",
    "~/Library/Application Support/CodeEdit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/austincondiff.codeedit.sfl2",
    "~/Library/Caches/austincondiff.CodeEdit",
    "~/Library/Containers/austincondiff.CodeEdit.OpenWithCodeEdit",
    "~/Library/HTTPStorages/austincondiff.CodeEdit",
    "~/Library/Preferences/austincondiff.CodeEdit.plist",
    "~/Library/Saved Application State/austincondiff.CodeEdit.savedState",
  ]
end
