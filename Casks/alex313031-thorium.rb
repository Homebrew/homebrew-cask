cask "alex313031-thorium" do
  arch arm: "arm64", intel: "x64"

  version "M111.0.5563.111"
  sha256 arm:   "d3ac965997631e77f1f496c04b9174f047b3529b1f17664058283eb82a5b5d9c",
         intel: "68379b22bf4285b86228044112831ea05bf5110dc400a14a1fdc779ed806a4e2"

  url "https://github.com/Alex313031/Thorium-Special/releases/download/#{version}/Thorium_MacOS_#{arch}.dmg",
      verified: "github.com/Alex313031/Thorium-Special/"
  name "Thorium"
  desc "Web browser"
  homepage "https://thorium.rocks/"

  # NOTE: This approach involves multiple requests and should be avoided
  # whenever possible. If upstream starts reliably providing dmg files in every
  # release, we should switch to `url :url` with `strategy :github_latest`.
  livecheck do
    url "https://github.com/Alex313031/Thorium-Special/releases?q=prerelease%3Afalse"
    regex(%r{/([^/]+?)/Thorium[._-]MacOS[._-]#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      # Collect the release tags on the page
      tags = page.scan(%r{href=["']?[^"' >]*?/releases/tag/([^"' >]*?)["' >]}i)&.flatten&.uniq

      max_reqs = 4
      tags.each_with_index do |tag, i|
        break if i >= max_reqs

        # Fetch the assets list HTML for the tag and match within it
        assets_page = Homebrew::Livecheck::Strategy.page_content(
          @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{tag}"),
        )
        matches = assets_page[:content]&.scan(regex)&.map { |match| match[0] }

        break matches if matches.present?
      end
    end
  end

  conflicts_with cask: "thorium"

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/Thorium",
    "~/Library/Caches/Thorium",
    "~/Library/Preferences/org.chromium.Thorium.plist",
    "~/Library/Saved Application State/org.chromium.Thorium.savedState",
  ]
end
