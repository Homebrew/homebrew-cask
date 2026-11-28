cask "hermes-desktop" do
  version "0.23.5,7066dcd33db8"
  sha256 "b61e047efe3059faf1c55fec3252e661f2d2a993a7a3eebf5cc6a9aa5c1790f5"

  url "https://hermes-assets.nousresearch.com/Hermes-Setup.dmg?build=#{version.csv.second}"
  name "Hermes Agent Desktop"
  desc "Open-source desktop AI agent"
  homepage "https://hermes-agent.nousresearch.com/desktop"

  # The homepage only provides the build number and the install script checks
  # the latest release on GitHub for the version, so we check both sources.
  livecheck do
    url "https://github.com/NousResearch/hermes-agent"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest do |json, regex|
      version_match = json["tag_name"]&.match(regex)
      next unless version_match

      desktop_page = Homebrew::Livecheck::Strategy.page_content("https://hermes-agent.nousresearch.com/desktop")
      build_match = desktop_page[:content]&.match(/Hermes[._-]Setup\.dmg\?[^"' >]*?build=(\h+)/i)
      next unless build_match

      "#{version_match[1]},#{build_match[1]}"
    end
  end

  depends_on :macos

  app "Hermes.app"

  uninstall quit: "com.nousresearch.hermes.setup"

  zap trash: [
        "~/Library/Application Support/Hermes",
        "~/Library/Caches/com.nousresearch.hermes.setup",
        "~/Library/Caches/hermes-setup",
        "~/Library/Preferences/com.nousresearch.hermes.plist",
        "~/Library/WebKit/com.nousresearch.hermes.setup",
        "~/Library/WebKit/hermes-setup",
      ],
      rmdir: "~/.hermes"
end
