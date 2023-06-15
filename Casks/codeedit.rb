cask "codeedit" do
  version "0.0.3-alpha.35,8ab7742"
  sha256 "1bfd1d37f19534ffda08f2dbd7ce5843ebf9a724c6cf0d4903ecf91950f99afe"

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
    "~/Library/Application Scripts/app.codeedit.CodeEdit.OpenWithCodeEdit",
    "~/Library/Application Support/CodeEdit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.codeedit.codeedit.sfl2",
    "~/Library/Caches/app.codeedit.CodeEdit",
    "~/Library/Containers/app.codeedit.CodeEdit.OpenWithCodeEdit",
    "~/Library/HTTPStorages/app.codeedit.CodeEdit",
    "~/Library/Preferences/app.codeedit.CodeEdit.plist",
    "~/Library/Saved Application State/app.codeedit.CodeEdit.savedState",
  ]
end
