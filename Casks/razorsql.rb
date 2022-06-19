cask "razorsql" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64"

  version "10.0.4"

  if Hardware::CPU.intel?
    sha256 "7621d50d9818293b3a18573095374dcd8c521dc06c337b03b66aad2b2d2dde91"
  else
    sha256 "ad5e206d72f10bc110e9e8e265647cab323e077e2a26f7707a249cbff1eb9ba2"
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
