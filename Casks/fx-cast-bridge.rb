cask "fx-cast-bridge" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "2e8dd783be80c21b5b25615284046df7ea7322dba80e96f09c93a329f3f6b6fb",
         intel: "f24e347fd240d5e74b488c83aee8c939b5abf7498dd047b4d3cdb5912a71e8aa"

  url "https://github.com/hensm/fx_cast/releases/download/v#{version}/fx_cast_bridge-#{version}-#{arch}.pkg",
      verified: "github.com/hensm/fx_cast/"
  name "fx_cast Bridge"
  desc "Bridge helper for fx_cast Firefox extension to enable Chromecast support"
  homepage "https://hensm.github.io/fx_cast/"

  # NOTE: This approach involves multiple requests and should be avoided
  # whenever possible. If upstream starts reliably providing `fx_cast_bridge`
  # pkg files in every release, we should switch to `url :url` with
  # `strategy :github_latest`.
  livecheck do
    url "https://github.com/hensm/fx_cast/releases?q=prerelease%3Afalse"
    regex(%r{/v?(\d+(?:\.\d+)+)/fx_cast_bridge[._-][^"' >]*?\.pkg}i)
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

  pkg "fx_cast_bridge-#{version}-#{arch}.pkg"

  uninstall pkgutil: "tf.matt.fx_cast_bridge"

  # No zap stanza required
end
