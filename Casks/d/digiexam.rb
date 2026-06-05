cask "digiexam" do
  version "26.1.24"
  sha256 :no_check

  url "https://www.digiexam.com/hubfs/client/Digiexam_Mac_universal.dmg"
  name "digiexam"
  desc "Academic testing platform with device lockdown"
  homepage "https://www.digiexam.com/"

  # The Release Notes page includes versions in the HTML but we can't reliably
  # identify which ones are specifically for Mac. Instead, this matches versions
  # from the JavaScript text, which identifies versions based on platform.
  livecheck do
    url "https://www.digiexam.com/platform/release-notes"
    regex(/\\?"platform\\?":\s*\\?"mac\\?".*?\\?"version\\?":\s*\\?["']v?(\d+(?:\.\d+)+)\\?["']/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Digiexam.app"

  zap trash: [
    "~/Library/Application Support/com.digiexam.student",
    "~/Library/Application Support/Digiexam",
    "~/Library/Caches/com.digiexam.student",
    "~/Library/Caches/se.digiexam.DigiExam",
    "~/Library/Caches/se.digiexam.DigiExam.ShipIt",
    "~/Library/HTTPStorages/se.digiexam.DigiExam",
    "~/Library/Logs/com.digiexam.student",
    "~/Library/Preferences/se.digiexam.DigiExam.plist",
    "~/Library/WebKit/com.digiexam.student",
  ]
end
