cask "razorsql" do
  arch arm: "_aarch64"

  version "10.0.8"
  sha256 arm:   "3b1ba5c9d4ab0dd140a5fefe67f7a4a074bbfac7dfc4c99e52a270b9b3643864",
         intel: "c14e5b0df52e83021d8f5b4b5c7bfc2e78c05b60c4c845bc1cd7e5a987a6c66c"

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
