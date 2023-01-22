cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "109.0,1,a470fb9f6de1caebd1511c684cf6f949"
    sha256 "524ace3e83aedf86b7f6d4d552ab9a5358d47c47e23723c76392efe49a5b55a5"
  end
  on_arm do
    version "109.0,1,e0b46cbfb55504d33fd75b328ef3f5c7"
    sha256 "5a60bc2b2d6fc6cbdfae8797178695b7139a0006869e5dbe214078a4d058f1f0"
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
