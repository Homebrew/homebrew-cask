cask "bluej" do
  version "5.2.1"
  sha256 "58ba7068b73574b18e8d927d31ae6d4c39453533ebe243d8deb943cafa64f5ef"

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.dmg"
  name "BlueJ"
  desc "Java Development Environment designed for beginners"
  homepage "https://www.bluej.org/"

  livecheck do
    url "https://www.bluej.org"
    regex(%r{href=.*?/BlueJ-mac-(\d+)(\d+)(\d+)(a)?\.dmg}i)
    strategy :page_match do |page|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]}" unless match[4]
      "#{match[1]}.#{match[2]}.#{match[3]}#{match[4]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "BlueJ.app"

  zap trash: "~/Library/Preferences/org.bluej"
end
