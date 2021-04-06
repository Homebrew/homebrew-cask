cask "appzapper" do
  version "2.0.3"
  sha256 "bb541a89fd513c4fa95eeefe46ebac6b985ac6498a46da4e4622089a15ef6bcd"

  url "https://appzapper.com/downloads/appzapper#{version.no_dots}.zip"
  appcast "https://www.appzapper.com/",
          must_contain: version.no_dots
  name "AppZapper"
  desc "Tool to uninstall unwanted applications and their support files"
  homepage "https://www.appzapper.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AppZapper.app"
end
