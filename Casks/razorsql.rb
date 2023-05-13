cask "razorsql" do
  arch arm: "_aarch64"

  version "10.4.0"
  sha256 arm:   "58ec0f4b4bf7f393f80dfe0ff69f58f7a2c58bc4c67dc9aca736eb22d1590dd5",
         intel: "ec77c6cd0438ae0c3ddb0049c4909ba2c0ceb8d7c4231d0e19dce2a1e8ba2f99"

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
