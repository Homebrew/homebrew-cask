cask "lunatask" do
  version "2.0.12"
  sha256 "9516f96a77b2213b2e43cb801a31ebf609f8a5887ff3a81d8dc735516c01052a"

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
