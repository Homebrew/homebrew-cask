cask "forkgram-telegram" do
  arch arm: "arm64", intel: "x86"

  version "4.8.1"
  sha256 arm:   "876c1927e68906ec55aba7a85ee81017f2b8ec9ebcba04e891d168bd662a2d51",
         intel: "a6541e559e9a18953a2f9e4958ff432860e94d45860f20077c69336ff3757818"

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
