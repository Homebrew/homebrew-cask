cask "razorsql" do
  arch arm: "_aarch64"

  version "10.2.0"
  sha256 arm:   "ca3050d3827885d3cb3d4b3fc46c7da4293fbaf94d51f3e839686612977e5421",
         intel: "a9b73a1ef816837b0b75d88905a7ece074c76e2b1f62a05b53d99ceb066458e0"

  url "https://s3.dualstack.us-east-1.amazonaws.com/downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}#{arch}.dmg",
      verified: "s3.dualstack.us-east-1.amazonaws.com/"
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
