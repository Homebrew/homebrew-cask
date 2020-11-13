cask "dropshare" do
  version "5.8.1,5178"
  sha256 "d4f19f0c90c1594f926463c773652e002e15688c2b68dc75e539ec9322e90303"

  # d2wvuuix8c9e48.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://dropshare.app/sparkle/Dropshare#{version.major}.xml"
  name "Dropshare"
  desc "File sharing solution"
  homepage "https://dropshare.app/"

  app "Dropshare #{version.major}.app"
  binary "#{appdir}/Dropshare #{version.major}.app/Contents/Resources/ds.sh", target: "ds"

  zap trash: [
    "~/Library/Application Support/Dropshare #{version.major}",
    "~/Library/Caches/net.mkswap.Dropshare#{version.major}",
    "~/Library/Cookies/net.mkswap.Dropshare#{version.major}.binarycookies",
    "~/Library/Logs/Dropshare #{version.major}",
    "~/Library/Preferences/net.mkswap.Dropshare#{version.major}.plist",
  ]
end
