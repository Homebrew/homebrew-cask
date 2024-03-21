cask "bluej" do
  version "5.3.0"
  sha256 "6e511c13ec50a2e37c03521f28c1310d70424dbbff6f635d1ece2ac16c92dc9a"

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
