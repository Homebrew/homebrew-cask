cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "109.0.1,2,9036c7f5b17fa6643f7382f281e0b07b"
    sha256 "052264e5c4ba6b91c498de58e0a9196bbdd3c5d82f66842d5431636e98d7fccc"
  end
  on_arm do
    version "109.0.1,2,acba411510a994bd2b9fb653d2ed4e23"
    sha256 "a454b78327542b17f4c213c13c3c4828b91b4bc29c4498de7d8c061e74ee64ea"
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
