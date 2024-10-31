cask "imaging-edge" do
  version "1.2.01.04030,glrfSDVSdu"
  sha256 "c05d709fbd38ca02eeee13a2b33a0576a224100c1247208ac44c07330bf1eabf"

  url "https://di.update.sony.net/NEX/#{version.csv.second}/ied_#{version.csv.first.dots_to_underscores}.dmg"
  name "Sony Imaging Edge Desktop"
  desc "For browse or develop RAW images and tethered shooting on Sony cameras"
  homepage "https://creatorscloud.sony.net/catalog/en-us/ie-desktop/index.html"

  livecheck do
    url "https://support.d-imaging.sony.co.jp/disoft_DL/desktop_DL/mac?fm=us"
    regex(%r{/([a-z0-9]+)/ied_(\d+(?:_\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.scan(regex)&.flatten
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[0]}"
    end
  end

  depends_on macos: ">= :monterey"

  pkg "ied_#{version.csv.first.major_minor_patch.dots_to_underscores}.pkg"

  uninstall login_item: "Imaging Edge Desktop",
            pkgutil:    [
              "com.sony.ImagingEdgeDesktop.pkg",
              "com.sony.ImagingEdgeVer.1.pkg",
            ]

  zap trash: [
    "~/Library/Application Support/Imaging Edge Desktop",
    "~/Library/Application Support/Imaging Edge",
    "~/Library/Caches/com.sony.Edit",
    "~/Library/Caches/com.sony.EULA-PP-Checker",
    "~/Library/Caches/com.sony.ImagingEdgeDesktop",
    "~/Library/Caches/com.sony.Remote",
    "~/Library/Caches/com.sony.Viewer",
    "~/Library/Preferences/com.sony.Edit.plist",
    "~/Library/Preferences/com.sony.EULA-PP-Checker.plist",
    "~/Library/Preferences/com.sony.ImagingEdgeDesktop.plist",
    "~/Library/Preferences/com.sony.Remote.plist",
    "~/Library/Preferences/com.sony.Viewer.plist",
    "~/Library/Saved Application State/com.sony.com.sony.Viewer.savedState",
    "~/Library/Saved Application State/com.sony.Edit.savedState",
    "~/Library/Saved Application State/com.sony.ImagingEdgeDesktop.savedState",
    "~/Library/Saved Application State/com.sony.Remote.savedState",
  ]
end
