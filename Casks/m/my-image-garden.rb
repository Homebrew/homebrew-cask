cask "my-image-garden" do
  version "3.6.8,06"
  sha256 "4e31bfce4bf811fee352945149b4bf868e9db09064e52addea0a0fad90f94eb3"

  url "https://gdlp01.c-wss.com/gds/2/0200006062/#{version.csv.second}/mmig-mac-#{version.csv.first.dots_to_underscores}-ea11.dmg",
      verified: "c-wss.com/"
  name "Canon My Image Garden"
  desc "Photo editing and printing tool"
  homepage "https://support-asia.canon-asia.com/?personal"

  livecheck do
    url "https://pdisp01.c-wss.com/gdl/WWUFORedirectTarget.do?id=MDIwMDAwNjA2MjA2"
    regex(%r{/([^/]+)/mmig-mac[._-]v?(\d+(?:[._]\d+)+)-ea11\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2].tr("_", ".")},#{match[1]}"
    end
  end

  pkg "My Image Garden V#{version.csv.first.no_dots}.pkg"

  uninstall quit:    "jp.co.canon.MyImageGarden",
            pkgutil: "jp.co.canon.MyImageGarden"

  zap trash: [
    "/Library/Caches/Canon",
    "~/Library/Application Scripts/jp.co.canon.ij.pesp.group",
    "~/Library/Application Scripts/jp.co.canon.MyImageGarden",
    "~/Library/Containers/jp.co.canon.MyImageGarden",
    "~/Library/Group Containers/jp.co.canon.ij.pesp.group",
  ]
end
