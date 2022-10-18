cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "105.0.3,1,c97ec464347d86e0eb432e1f4c98415c"
    sha256 "962d01bfc737a7e3650d28f19afce94b25af33f28b3ff6f6a08c05e5faa6c2df"
  end
  on_arm do
    version "105.0.3,1,f542b4891612e3f7c2c464a78763634d"
    sha256 "ce8f9b4b6f4c1af15dae68f65b8c4b967cea8bb7bcf0f947034c51c4dce22c65"
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
