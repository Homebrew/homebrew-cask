cask "mooinfo" do
  version "1.1.3"
  sha256 "35a431410cbd7a01ee29165aeb037e07d25856a14b6913f89cbbbeea2afe38f0"

  url "https://github.com/rememberber/MooInfo/releases/download/1.1.3/MooInfo_1.1.3.dmg",
      verified: "github.com/p0deje/Maccy/"
  name "MooInfo"
  desc "Visualization GUI for OSHI, to view information about the system and hardware."
  homepage "https://rememberber.github.io/MooInfo/"
  
  livecheck do
    url "https://gitee.com/zhoubochina/MooInfo/raw/master/src/main/resources/version_summary.json"
    regex(/^"currentVersion":\s*"(\d+(?:\.\d+)+)",$/i)
    strategy :json do |json, regex|
      match = json.match(regex)
      match[1] if match
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "MooInfo.app"

  uninstall quit: "com.luoboduner.moo.info.App"

end
