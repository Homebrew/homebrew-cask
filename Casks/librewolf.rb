cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "106.0.3,1,14e3b54ff5708ef4a39f7dca76c65e03"
    sha256 "2c9d1658ff6aaf7bcbd371f83ce593d5db12af6e3f23008f6e6d47c4000da749"
  end
  on_arm do
    version "106.0.3,1,09a89ea44071c2f45c85697c5aae43ac"
    sha256 "1b6b0273f7bb98214f233fbc3eeb9e2479d5f420ba83b60bfb56f0814d858307"
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
