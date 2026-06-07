cask "hermes-agent-desktop" do
  version "0.16.0,c37c6eaf296a"
  sha256 "b61e047efe3059faf1c55fec3252e661f2d2a993a7a3eebf5cc6a9aa5c1790f5"

  url "https://hermes-assets.nousresearch.com/Hermes-Setup.dmg?build=#{version.csv.second}"
  name "Hermes Agent Desktop"
  desc "Open-source desktop AI agent"
  homepage "https://hermes-agent.nousresearch.com/desktop"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      version_match = page.match(/Hermes Agent v?(\d+(?:\.\d+)+)/i)
      next if version_match.blank?

      build_match = page.match(/Hermes[._-]Setup\.dmg\?build=([a-z0-9]+)/i)
      next if build_match.blank?

      "#{version_match[1]},#{build_match[1]}"
    end
  end

  depends_on macos: :big_sur

  app "Hermes.app"

  uninstall quit: "com.nousresearch.hermes.setup"

  zap trash: [
    "~/Library/Application Support/Hermes",
    "~/Library/Caches/com.nousresearch.hermes.setup",
    "~/Library/HTTPStorages/com.nousresearch.hermes.setup",
    "~/Library/Preferences/com.nousresearch.hermes.setup.plist",
    "~/Library/Saved Application State/com.nousresearch.hermes.setup.savedState",
    "~/Library/WebKit/com.nousresearch.hermes.setup",
  ]
end
