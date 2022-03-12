cask "appzapper" do
  version "2.0.3"
  sha256 "bb541a89fd513c4fa95eeefe46ebac6b985ac6498a46da4e4622089a15ef6bcd"

  url "https://appzapper.com/downloads/appzapper#{version.no_dots}.zip"
  name "AppZapper"
  desc "Tool to uninstall unwanted applications and their support files"
  homepage "https://www.appzapper.com/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/appzapper(\d+)(\d+)(\d+)\.zip}i)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AppZapper.app"

  zap trash: [
    "~/Library/Application Support/AppZapper",
    "~/Library/Preferences/com.appzapper.appzapper2.plist",
  ]
end
