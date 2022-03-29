cask "bluej" do
  version "5.0.3"
  sha256 "54a6cb9c2013529c3526d42b797004d6e9330d67eb05bde82da2db74606c4ab5"

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
