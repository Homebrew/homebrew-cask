cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "104.0,1,c8cea6d6d7e1ac90d9a7df3d9f33a46d"
    sha256 "717f0b80cd86e95d0425b3112e93ce667a13e4a2ef8dcaec9490f0608b617d11"
  end
  on_arm do
    version "104.0,1,6f9aa4dbc762308ab799be98b481e456"
    sha256 "661a9f8634a8d196311c0a0dfcc033c782fceb66050d49b072c997a33dac9ba4"
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
