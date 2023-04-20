cask "bluej" do
  version "5.1.0a"
  sha256 "2bbb4b687d91b04ee748602245c5f8cba93c0f1d1189ec6474e51d511d74b012"

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
