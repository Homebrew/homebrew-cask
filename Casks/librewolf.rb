cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "105.0.1,1,47ea426336b7e2ea855fd67ef6a83630"
    sha256 "3876138958fa208a4290beeea9e40be3360b04e4e3d6633bdc83ab9f1f3bb458"
  end
  on_arm do
    version "105.0.1,1,65f736c5a1c7cdf89217d1fb495a22c9"
    sha256 "55cd57acefb747f9f1efc14fde9c713b5c612ae711c51e344b0af7b14da97e0a"
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
