cask "testfully" do
  version "1.186.1,515"
  sha256 "c9bee87dc0e2e399ef29bdec4a4b3fc2e290794ea5b1b2b15ea865ae306919f5"

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
