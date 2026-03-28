cask "slicer" do
  version "5.10.0,6911c75fac7b1c95e7934d1b"
  sha256 "369ad4d450ea0c7891da6dcf3b036485e96ade1d784207830760a00b555a826c"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "slicer@preview"
  depends_on macos: ">= :ventura"

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
