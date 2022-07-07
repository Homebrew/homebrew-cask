cask "razorsql" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64"

  version "10.0.5"

  if Hardware::CPU.intel?
    sha256 "bb629d69527b692c4dfaf5df145262006e0bff4b6c82b11a58248d20c075cd5e"
  else
    sha256 "3eaebf9f2260e6d882f16175dcb47e42b7772f71e726cc4f7a5e79d0f2fc4f09"
  end

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
