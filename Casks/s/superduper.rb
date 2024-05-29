cask "superduper" do
  version "3.8,132"
  sha256 :no_check

  url "https://shirtpocket.s3.amazonaws.com/SuperDuper/SuperDuper!.dmg",
      verified: "shirtpocket.s3.amazonaws.com/SuperDuper/"
  name "SuperDuper!"
  desc "Backup, recovery and cloning software"
  homepage "https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html"

  livecheck do
    url "https://shirtpocket.s3.amazonaws.com/SuperDuper/superduperinfo.rtf"
    strategy :page_match do |page|
      match = page.match(/SuperDuper!\s*v?(\d+(?:\.\d+)+)\s*\(v(\d+)\)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "SuperDuper!.app"

  zap trash: [
    "~/Library/Application Support/SuperDuper!",
    "~/Library/Caches/com.blacey.SuperDuper",
    "~/Library/Preferences/com.blacey.SuperDuper.plist",
    "~/Library/Preferences/com.paradigmasoft.VStudio",
    "~/Library/Preferences/com.paradigmasoft.vstudio.plist",
    "~/Library/Saved Application State/com.blacey.SuperDuper.savedState",
    "~/Library/Services/Run SuperDuper! Settings.workflow",
  ]
end
