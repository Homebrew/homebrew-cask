cask "my-image-garden" do
  version "3.6.6,04"
  sha256 "1b83b4695cd8d84c7807a06a5ba4c7e46cc5cfd73bdaf606a327e7341f573bb2"

  url "https://gdlp01.c-wss.com/gds/2/0200006062/#{version.csv.second}/mmig-mac-#{version.csv.first.dots_to_underscores}-ea11.dmg",
      verified: "c-wss.com/"
  name "Canon My Image Garden"
  desc "Photo editing and printing tool"
  homepage "https://support-asia.canon-asia.com/?personal"

  livecheck do
    url "https://pdisp01.c-wss.com/gdl/WWUFORedirectTarget.do?id=MDIwMDAwNjA2MjA0"
    regex(%r{/([^/]+)/mmig-mac[._-]v?(\d+(?:[._]\d+)+)-ea11\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
      next if match.blank?

      "#{match[2].tr("_", ".")},#{match[1]}"
    end
  end

  pkg "My Image Garden V#{version.csv.first.no_dots}.pkg"

  uninstall pkgutil: "jp.co.canon.MyImageGarden",
            quit:    "jp.co.canon.MyImageGarden"
end
