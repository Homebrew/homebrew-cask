cask "razorsql" do
  arch arm: "_aarch64"

  version "11.0.2"
  sha256 arm:   "0c76a12c3be296b778355a6414a77f6720500a31b015fa68b6f1c2cff9f1d0e5",
         intel: "96028ab3d2c30316729cb6e7cb964409a70ca7992105ccbee0a02f482cdfd741"

  url "https://s3.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}#{arch}.dmg",
      verified: "s3.amazonaws.com/downloads.razorsql.com/downloads/"
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

  depends_on macos: :big_sur

  app "RazorSQL.app"

  zap trash: "~/.razorsql"
end
