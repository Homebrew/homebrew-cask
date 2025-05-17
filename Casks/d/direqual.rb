cask "direqual" do
  version "6.7.1.04"
  sha256 :no_check

  url "https://naarakstudio.com/download/DirEqual.dmg"
  name "DirEqual"
  desc "Advanced directory compare utility"
  homepage "https://naarakstudio.com/direqual/"

  livecheck do
    url "https://naarakstudio.com/download/direqual/update.ver"
    regex(/v?(\d+(?:\.\d+)*):DirEqual\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[0].split("", 4).join(".")
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "DirEqual.app"

  zap trash: [
    "~/Library/Application Scripts/com.naarak.DirEqual",
    "~/Library/Caches/com.naarak.DirEqual",
    "~/Library/Containers/com.naarak.DirEqual",
    "~/Library/Preferences/com.naarak.DirEqual.plist",
    "~/Library/WebKit/com.naarak.DirEqual",
  ]
end
