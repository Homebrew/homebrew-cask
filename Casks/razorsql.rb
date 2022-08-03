cask "razorsql" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64"

  version "10.0.7"

  if Hardware::CPU.intel?
    sha256 "707dad5843d8b77015f8a5bab2407909a8c623c7aaff300529bfebdadfef42be"
  else
    sha256 "8e65cc0be44bc8e9f91b2de1831bc348a6f7fc30bb1f79b9383a4799311d833d"
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
