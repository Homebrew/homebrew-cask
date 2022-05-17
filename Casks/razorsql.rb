cask "razorsql" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64"

  version "10.0.3"

  if Hardware::CPU.intel?
    sha256 "6c2fdb01b8ed53de80fdbc912ec652d56d2add1780227cc0e679a10bc1b2c9e6"
  else
    sha256 "11d21dc0e5316b80e4a539c0837ed51e9644946166bbfcb856004a2a586dcd62"
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
