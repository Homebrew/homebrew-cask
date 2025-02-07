cask "pixpin" do
  version "1.9.11.8"
  sha256 "69fe9b9d2ccb51acc07f95599594c0638764c99e0285e301164efa1ada52b9f6"

  url "https://download.pixpin.cn/PixPin_#{version}.dmg"
  name "PixPin"
  desc "Screenshot tool"
  homepage "https://pixpin.cn/"

  livecheck do
    url :homepage
    regex(%r{href=.*/PixPin[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      changelog_path = page[%r{href=.*?/docs/official-log/(v?\d+(?:\.\d+)+(?:\.html)?)["' >]}i, 1]
      next if changelog_path.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://pixpin.cn/docs/official-log/#{changelog_path}")
      version_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "PixPin.app"

  uninstall quit: "com.depthpicture.PixPin"

  zap trash: [
    "~/Library/Application Support/PixPin",
    "~/Library/Caches/com.depthpicture.PixPin",
    "~/Library/Logs/PixPin",
    "~/Library/Preferences/com.depthpicture.PixPin.plist",
    "~/Library/Saved Application State/com.depthpicture.PixPin.savedState",
  ]
end
