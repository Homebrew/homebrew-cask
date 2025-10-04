cask "testfully" do
  version "1.179.0,472"
  sha256 "9aeda8809bbdbc4f3425dae8f736f148511ff5141b90c29ad927c03519ce1120"

  url "https://releases.testfully.io/desktop/build-#{version.csv.second}/Testfully.app.zip"
  name "Testfully"
  desc "Platform for API testing and monitoring"
  homepage "https://docs.testfully.io/"

  livecheck do
    url "https://releases.testfully.io/desktop/updater-prod.json"
    regex(%r{build[._-](\d+)/Testfully(\.app)?\.(?:t|zip)}i)
    strategy :json do |json, regex|
      # This assumes that macOS ARM and Intel continue to use the same file
      build = json.dig("platforms", "darwin-aarch64", "url")&.[](regex, 1)
      next unless build

      version = json["version"]&.[](/v?(\d+(?:\.\d+)+)/i, 1)
      next if version.blank?

      "#{version},#{build}"
    end
  end

  app "Testfully.app"

  zap trash: [
    "~/Library/Application Support/io.testfully.app",
    "~/Library/Caches/io.testfully.app",
    "~/Library/Logs/io.testfully.app",
    "~/Library/WebKit/io.testfully.app",
  ]
end
