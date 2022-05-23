cask "maczip4win" do
  version "0.4.1"
  sha256 "169e84b66dfd2d513385c86726a8c78c37cf73c8c2bf753ddb6fd112d7b38ec7"

  url "https://ynomura.com/MacZip4win_#{version.dots_to_underscores}.zip"
  name "MacZip4Win"
  desc "Create zip files for use on Windows"
  homepage "https://ynomura.com/wp/?page_id=116"

  livecheck do
    url :homepage
    regex(/href=.*?MacZip4win[._-]v?(\d+(?:[._]\d+)+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  app "MacZip4win #{version}/MacZip4Win.app"
end
