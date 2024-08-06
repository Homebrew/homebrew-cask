cask "slicer" do
  version "5.6.2,660fa2e930e435b0e355f67c"
  sha256 "1b2f8700607f40b03973ad35ce5d2195b931907c6ed0d5ec71a9b24f5447584b"

  url "https://slicer-packages.kitware.com/api/v1/item/#{version.csv.second}/download",
      verified: "slicer-packages.kitware.com/"
  name "3D Slicer"
  desc "Medical image processing and visualization system"
  homepage "https://www.slicer.org/"

  livecheck do
    url "https://download.slicer.org"
    regex(%r{href=.*?/bitstream/(\h+)["' >].+?["']header["'][^>]*?>\s*v?(\d+(?:\.\d+)+)}im)
    strategy :page_match do |page, regex|
      match = page.scan(regex)
      next if match.length < 2

      "#{match[1][1]},#{match[1][0]}"
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
