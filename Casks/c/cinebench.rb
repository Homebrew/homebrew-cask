cask "cinebench" do
  version "2024"
  sha256 "dcc840852c85c2f9ea39f55e78b23efbb59a27960555c0fb319d5bce7f51fdb6"

  url "https://mx-app-blob-prod.maxon.net/mx-package-production/website/macos/maxon/cinebench/Cinebench#{version}_macOS.dmg",
      referer: "https://www.maxon.net/en/downloads/cinebench-#{version}-downloads"
  name "Cinebench"
  desc "Hardware benchmarking utility"
  homepage "https://www.maxon.net/products/cinebench/"

  # The content of the Downloads page is kept in a `payload.js` file but the
  # URL contains a numeric identifier that changes when the website is updated.
  # As such, we have to identify the JS file URL from the Downloads page HTML
  # before fetching and checking the JS file for version information.
  livecheck do
    url "https://www.maxon.net/en/downloads"
    regex(/cinebench-?[rv]?(\d+(?:\.\d+)*)-downloads/i)
    strategy :page_match do |page, regex|
      # Find the current JS file URL on the Downloads page
      js_match = page.match(%r{href=["']?([^"' >]+?/en/downloads/payload.js[^"' >]*?)}i)
      next if js_match.blank?

      # Fetch the JS file (using the absolute URL)
      js_response = Homebrew::Livecheck::Strategy.page_content(
        URI.join(@url, js_match[1]).to_s,
      )
      next if (js_content = js_response[:content]).blank?

      # Identify the version from the versioned downloads page URL
      js_content.scan(regex).map { |match| match[0] }
    end
  end

  depends_on macos: ">= :big_sur"

  app "Cinebench.app"

  uninstall quit: "net.maxon.cinebench"

  zap trash: [
    "~/Documents/MAXON",
    "~/Library/Caches/net.maxon.cinebench",
    "~/Library/Caches/net.maxon.cinema4d",
    "~/Library/Preferences/MAXON",
    "~/Library/Saved Application State/net.maxon.cinebench.savedState",
  ]
end
