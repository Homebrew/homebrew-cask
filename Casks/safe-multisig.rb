cask "safe-multisig" do
  version "3.8.4"
  sha256 "afe4017944f362c038454714bd520914390e72dc6743562c82e573a8467062ae"

  url "https://github.com/gnosis/safe-react/releases/download/v#{version}/Safe-Multisig-#{version}.dmg",
      verified: "github.com/gnosis/safe-react/"
  name "Gnosis Safe Multisig"
  desc "Ethereum multisig wallet"
  homepage "https://gnosis-safe.io/"

  livecheck do
    url :homepage
    regex(/Safe-Multisig[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      js_file = page[/component---src-pages-index-tsx-([^.]+)\.js/i, 1]
      next [] if js_file.blank?

      js_file_data = Homebrew::Livecheck::Strategy.page_content("https://gnosis-safe.io/component---src-pages-index-tsx-#{js_file}.js")
      next [] if js_file_data[:content].blank?

      js_file_data[:content][regex, 1]
    end
  end

  app "Safe Multisig.app"

  zap trash: "~/Library/Application Support/Safe Multisig"
end
