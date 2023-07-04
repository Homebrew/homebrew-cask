cask "bluej" do
  version "5.2.0"
  sha256 "60de856c511fe659f41132a4926414263b931666eb615310bced4d22e9581bbf"

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

  app "BlueJ.app"

  zap trash: "~/Library/Preferences/org.bluej"
end
