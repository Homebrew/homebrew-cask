cask "safe-multisig" do
  version "3.17.2"
  sha256 "3f2121a86d2d476d0a23785f00f389aa85b9744d279764159ae7b3b30b73588b"

  url "https://github.com/gnosis/safe-react/releases/download/v#{version}-desktop/Safe-#{version}.dmg",
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
