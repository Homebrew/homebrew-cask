cask "slicer" do
  version "5.0.3,62cc8ff3aa08d161a31c260a"
  sha256 "45cafff1d60cf1d225285b1a59260b164062cf5bde802cbadcaef8d00b177270"

  url "https://slicer-packages.kitware.com/api/v1/item/#{version.csv.second}/download",
      verified: "slicer-packages.kitware.com/"
  name "3D Slicer"
  desc "Medical image processing and visualization system"
  homepage "https://www.slicer.org/"

  livecheck do
    url "http://download.slicer.org"
    strategy :page_match do |page|
      match = page.scan(%r{href=.*?/bitstream/(\d+\w+).*?\n?.*?version\s*(\d+(?:\.\d+)+)}im)
      next if match.blank?

      "#{match[1][1]},#{match[1][0]}"
    end
  end

  app "Slicer.app"

  zap trash: [
    "~/Library/Application Support/NA-MIC",
    "~/Library/Preferences/org.slicer.slicer.plist",
    "~/Library/Preferences/Slicer.plist",
    "~/Library/Saved Application State/org.slicer.slicer.savedState",
    "~/.config/www.na-mic.org",
  ]
end
