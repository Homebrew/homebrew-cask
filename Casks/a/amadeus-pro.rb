cask "amadeus-pro" do
  version "3.0.2"
  sha256 :no_check

  url "https://s3.amazonaws.com/HairerSoftPublic/AmadeusPro#{version.major}/AmadeusPro.zip"
  name "Amadeus Pro"
  desc "Multi-purpose audio recorder, editor and converter"
  homepage "https://www.hairersoft.com/pro.html"

  livecheck do
    url "https://s3.amazonaws.com/HairerSoftPublic/AmadeusPro#{version.major}/AmadeusPro#{version.major}.plist"
    strategy :xml do |xml|
      short_version = xml.elements["//key[text()='productVersion']"]&.next_element&.text
      next if short_version.blank?

      short_version.strip
    end
  end

  depends_on macos: :ventura

  app "Amadeus Pro #{version.major}.app"

  uninstall quit: "com.HairerSoft.AmadeusPro#{version.major}"

  zap trash: [
    "~/Library/Application Support/Amadeus Pro",
    "~/Library/Caches/com.HairerSoft.AmadeusPro",
    "~/Library/HTTPStorages/com.HairerSoft.AmadeusPro",
    "~/Library/Preferences/com.HairerSoft.AmadeusPro.plist",
    "~/Library/Saved Application State/com.HairerSoft.AmadeusPro.savedState",
  ]
end
