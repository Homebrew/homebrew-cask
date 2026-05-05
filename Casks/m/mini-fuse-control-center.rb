cask "mini-fuse-control-center" do
  version "1.4.2,1381"
  sha256 "44c23997580ed0002545e1cf7ad0c3d526ea5cd13ae63a0837b302eef368c354"

  url "https://dl.arturia.net/products/mfcc/soft/MiniFuse_Control_Center__#{version.csv.first.dots_to_underscores}_#{version.csv.second}.pkg"
  name "MiniFuse Control Center"
  desc "Audio interface control software for Arturia MiniFuse"
  homepage "https://www.arturia.com/products/audio/minifuse/overview"

  pkg "MiniFuse_Control_Center__#{version.csv.first.dots_to_underscores}_#{version.csv.second}.pkg"

  uninstall pkgutil: [
    "com.Arturia.MiniFuse Control Center.asc",
    "com.Arturia.MiniFuseControlCenter.documentation",
    "com.Arturia.MiniFuseControlCenter.resources",
  ]

  zap trash: [
    "~/Library/Application Support/Arturia/MiniFuse Control Center",
    "~/Library/Preferences/com.Arturia.MiniFuseControlCenter.plist",
    "~/Library/Preferences/com.Arturia.MiniFuseControlCenterAgent.plist",
    "~/Library/Logs/Arturia/MiniFuse Control Center",
  ]
end
