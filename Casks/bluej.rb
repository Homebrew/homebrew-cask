cask "bluej" do
  version "5.1.0"
  sha256 "a7289ac9f1161e885fa12d5acbc754b4c690c0804bc372f75547b97fc8d2b3c0"

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name "BlueJ"
  desc "Java Development Environment designed for begginers"
  homepage "https://www.bluej.org/"

  livecheck do
    url "https://www.bluej.org"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/BlueJ-mac-(\d+)(\d+)(\d+)(a)?\.zip}i)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]}" unless match[4]
      "#{match[1]}.#{match[2]}.#{match[3]}#{match[4]}"
    end
  end

  app "BlueJ #{version}/BlueJ.app"

  zap trash: "~/Library/Preferences/org.bluej"
end
