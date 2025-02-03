cask "testfully" do
  version "1.164.0,386"
  sha256 "b8664fc565b32602c19bf28225c0c214fdda578970020521f549ebea5df598a5"

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
