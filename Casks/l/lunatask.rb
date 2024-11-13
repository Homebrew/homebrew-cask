cask "lunatask" do
  version "2.0.13"
  sha256 "1b4038cb59b0f33ebdb9e1a08d20f4321d6c8542b5536270229be0249f0e734f"

  url "https://lunatask.app/download/Lunatask-#{version}-universal.dmg"
  name "Lunatask"
  desc "Encrypted to-do list, habit tracker, journaling, life-tracking and notes app"
  homepage "https://lunatask.app/"

  livecheck do
    url "https://lunatask.app/releases/atom.xml"
    regex(%r{releases/(\d+(?:\.\d+)+)}i)
    strategy :xml do |xml, regex|
      xml.get_elements("//id").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "Lunatask.app"

  zap trash: [
    "~/Library/Application Support/@lunatask",
    "~/Library/Logs/@lunatask",
    "~/Library/Preferences/com.mikekreeki.tasks.plist",
    "~/Library/Saved Application State/com.mikekreeki.tasks.savedState",
  ]
end
