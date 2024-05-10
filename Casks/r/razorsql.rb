cask "razorsql" do
  arch arm: "_aarch64"

  version "10.5.5"
  sha256 arm:   "ddd6178b9a3874f9867a16f4b7a38fb698d97fcb4a5c4c6d807cb14f6068ba64",
         intel: "56e586ef3fbf45cc9777d9f86c83d6c0ac867cae8e8f2776b357b3a0d7944d56"

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
