cask "testfully" do
  version "1.167.0,399"
  sha256 "4b17a1ae254d378a2acc9177ac6eebcbb4e26b92bf991fee0c1a081c519c53ad"

  url "https://releases.testfully.io/desktop/build-#{version.csv.second}/Testfully.app.zip"
  name "Testfully"
  desc "Platform for API testing and monitoring"
  homepage "https://docs.testfully.io/"

  livecheck do
    url "https://docs.testfully.io/docs/download/"
    regex(%r{build[._-](\d+)/Testfully(\.app)?\.zip}i)
    strategy :page_match do |page, regex|
      version = page.match(/latest\s*version\s*\((\d+(?:\.\d+)+)\)/i)
      next if version.blank?

      build = page.match(regex)
      next if build.blank?

      "#{version[1]},#{build[1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Testfully.app"

  zap trash: [
    "~/Library/Application Support/io.testfully.app",
    "~/Library/Caches/io.testfully.app",
    "~/Library/Logs/io.testfully.app",
    "~/Library/WebKit/io.testfully.app",
  ]
end
