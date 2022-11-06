cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "106.0.5,1,6ce6e4ac89c01bf56704e9689ab8208e"
    sha256 "cde9950531b547d7d2baf8140c2842a302819c34ad5c78fcf9047820a2db3a0e"
  end
  on_arm do
    version "106.0.5,1,55a2256aaad4ea36c63b8d82ec86bb16"
    sha256 "db03f43e56aab17a92064c93688fc9a311ad0ab9c4a4edc002e4a97fb451c3cb"
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
