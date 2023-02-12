cask "forkgram-telegram" do
  arch arm: "arm64", intel: "x86"

  version "4.6.2"
  sha256 arm:   "9c2cf902c581492316cbd9235f8632b8c1a6766f46d1932f0fb6e65044f85aa8",
         intel: "f354d28525de990f9c3895458fae43d86c1d3487d87962223a9f7f87858296f0"

  url "https://github.com/Forkgram/tdesktop/releases/download/v#{version}/Forkgram.macOS.no.auto-update_#{arch}.zip"
  name "Forkgram"
  desc "Fork of Telegram Desktop"
  homepage "https://github.com/Forkgram/"

  # NOTE: This approach involves multiple requests and should be avoided
  # whenever possible. If upstream starts reliably providing the macOS zip
  # files in every release, we should switch to `url :url` with
  # `strategy :github_latest`.
  livecheck do
    url "https://github.com/Forkgram/tdesktop/releases?q=prerelease%3Afalse"
    regex(%r{/v?(\d+(?:\.\d+)+)/Forkgram[._-]macOS[._-][^"' >]*?#{arch}\.zip}i)
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

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Forkgram.app"

  zap trash: "~/Library/Application Support/Forkgram Desktop"
end
