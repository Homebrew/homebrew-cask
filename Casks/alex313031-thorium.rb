cask "alex313031-thorium" do
  arch arm: "arm64", intel: "x64"

  version "M113.0.5672.177"
  sha256 arm:   "66218e26f5f70d5342970a4b61cb641fcd4577af07dcf4b1a3447450d86f046e",
         intel: "0f5d8652b24a338e959c8ba0a70df0fc159f10f189798f1056b561ce39947f7a"

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
