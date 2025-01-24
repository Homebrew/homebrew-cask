cask "slicer" do
  version "5.8.0,679333bb1357655fd5860245"
  sha256 "2087fc62877cb2e5ef1f8885646794e51633db1df16bfeb44e8a9d2a4292b909"

  url "https://slicer-packages.kitware.com/api/v1/item/#{version.csv.second}/download",
      verified: "slicer-packages.kitware.com/"
  name "3D Slicer"
  desc "Medical image processing and visualization system"
  homepage "https://www.slicer.org/"

  livecheck do
    url "https://download.slicer.org/?os=macosx&stability=release"
    regex(%r{href=.*?/bitstream/(\h+)["' >].+?["']header["'][^>]*?>\s*v?(\d+(?:\.\d+)+)}im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  conflicts_with cask: "slicer@preview"

  app "Slicer.app"

  zap trash: [
    "~/.config/www.na-mic.org",
    "~/Library/Application Support/NA-MIC",
    "~/Library/Preferences/org.slicer.slicer.plist",
    "~/Library/Preferences/Slicer.plist",
    "~/Library/Saved Application State/org.slicer.slicer.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
