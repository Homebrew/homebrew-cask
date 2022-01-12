cask "slicer" do
  version "4.11.20210226,60add6fdae4540bf6a89bf73"
  sha256 "3d49b9aa783b3dd54a5be96770764cca86d2efdb8a4719edd05560a4c5121a8b"

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
