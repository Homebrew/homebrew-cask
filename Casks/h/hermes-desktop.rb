cask "hermes-desktop" do
  version "0.17.0,c9269fbfb689"
  sha256 "b61e047efe3059faf1c55fec3252e661f2d2a993a7a3eebf5cc6a9aa5c1790f5"

  url "https://hermes-assets.nousresearch.com/Hermes-Setup.dmg?build=#{version.csv.second}"
  name "Hermes Agent Desktop"
  desc "Open-source desktop AI agent"
  homepage "https://hermes-agent.nousresearch.com/desktop"

  livecheck do
    url :homepage
    regex(/Hermes\s+Agent\s+v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      version_match = page.match(regex)
      next unless version_match

      build_match = page.match(/Hermes[._-]Setup\.dmg\?build=(\h+)/i)
      next unless build_match

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
