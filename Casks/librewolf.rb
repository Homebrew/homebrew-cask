cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "103.0.2,1,87f3819691b7d2c7b0dd08e6793ef91f"
    sha256 "13f083d5b7073c0cf170a1a1f22d24617ad0bd23840c0b0ee7f21637ca8c418e"
  end
  on_arm do
    version "103.0.2,1,1434cd50ad6132a1a9799b9d837dd28f"
    sha256 "266b6a8878b2ea5cf4dc0fbb5e45a8658227d92f19ef81e98114e49dead20105"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.csv.third}/librewolf-#{version.csv.first}-#{version.csv.second}.en-US.mac.#{arch}.dmg",
      verified: "gitlab.com/librewolf-community/browser/macos/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/13853965/releases"
    regex(%r{/(\w+)/librewolf[._-](\d+(?:\.\d+)+)-(\d+)\.en-US\.mac\.#{arch}\.dmg[\s"]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[2]},#{match[0]}"
      end
    end
  end

  app "LibreWolf.app"

  zap trash: [
    "~/.librewolf",
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
  ]
end
