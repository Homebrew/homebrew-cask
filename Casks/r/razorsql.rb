cask "razorsql" do
  arch arm: "_aarch64"

  version "10.6.3"
  sha256 arm:   "378dd834bd64d6d33c7855380ab2c3d082f428853b1c1004d88eefcdffff62f7",
         intel: "0a3c02b5573e109b84a0df65a549592db463f78b4d1b211ecbb55d19a2563ca7"

  url "https://s3.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}#{arch}.dmg",
      verified: "s3.amazonaws.com/"
  name "RazorSQL"
  desc "SQL query tool and SQL editor"
  homepage "https://razorsql.com/"

  livecheck do
    url "https://razorsql.com/download_mac.html"
    regex(/href=.*?razorsql[._-]?v?(\d+(?:[._]\d+)+)#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: ">= :mojave"

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end
