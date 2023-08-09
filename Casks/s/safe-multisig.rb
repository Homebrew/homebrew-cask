cask "safe-multisig" do
  version "3.33.2"
  sha256 "175e2f390b6e4afee9f3b83b5c60838bd1d809e51fbe35d3123cc9269a755562"

  url "https://github.com/gnosis/safe-react/releases/download/v#{version}+desktop/Safe-#{version}.dmg",
      verified: "github.com/gnosis/safe-react/"
  name "Gnosis Safe Multisig"
  desc "Ethereum multisig wallet"
  homepage "https://gnosis-safe.io/"

  livecheck do
    url :homepage
    regex(/Safe-?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      js_file = page[/component---src-pages-index-tsx-([^.]+)\.js/i, 1]
      next [] if js_file.blank?

      js_file_data = Homebrew::Livecheck::Strategy.page_content("https://gnosis-safe.io/component---src-pages-index-tsx-#{js_file}.js")
      next [] if js_file_data[:content].blank?

      js_file_data[:content][regex, 1]
    end
  end

  app "Safe.app"

  zap trash: "~/Library/Application Support/Safe Multisig"
end
