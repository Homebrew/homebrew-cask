cask "fontstand" do
  version "2.4.0"
  sha256 :no_check

  url "https://fontstand.com/apps/download/69"
  name "Fontstand"
  desc "Font discovery and rental platform"
  homepage "https://fontstand.com/"

  livecheck do
    url :url
    regex(/Fontstand[._-]v?(\d+(?:[.-]\d+)+)\.zip/i)
    strategy :header_match do |headers, regex|
      match = headers["content-disposition"].match(regex)[1]
      next if match.blank?

      match.tr("-", ".")
    end
  end

  app "Fontstand.app"

  zap trash: [
    "~/Library/Application Support/Fontstand",
    "~/Library/Application Support/Fontstand Agent",
    "~/Library/Application Support/com.fontstand-bv.mac.Fontstand",
    "~/Library/Caches/com.fontstand-bv.mac.Fontstand",
    "~/Library/LaunchAgents/com.fontstand-bv.mac.Fontstand-Agent.plist",
    "~/Library/Preferences/com.fontstand-bv.mac.Fontstand.plist",
  ]
end
