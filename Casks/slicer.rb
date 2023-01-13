cask "slicer" do
  version "5.2.1,637f7a7f517443dc5dc73272"
  sha256 "12899b2af65796878fb0e2a37555da3c76a573b256153ca3b87bf072d4e9ab98"

  url "https://slicer-packages.kitware.com/api/v1/item/#{version.csv.second}/download",
      verified: "slicer-packages.kitware.com/"
  name "3D Slicer"
  desc "Medical image processing and visualization system"
  homepage "https://www.slicer.org/"

  livecheck do
    url "https://download.slicer.org"
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
