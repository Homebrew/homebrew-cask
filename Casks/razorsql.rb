cask "razorsql" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64"

  version "10.0.6"

  if Hardware::CPU.intel?
    sha256 "c3c4e054d5fdeec336ee4d959f017694fee7855c94eef1efd04e67f97e0e359e"
  else
    sha256 "6fc6b39f0c32d0cbe93b73b7c6358ee4861bc4cebe4bc6bf33edf88c3fab2fc7"
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
