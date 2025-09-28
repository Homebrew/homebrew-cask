cask "msgfiler" do
  version "4.3.0.53,20250928,124549"
  sha256 "6aacd09b66e9c96de188a88a9d7ab31502b4a42c0fdad3ecdf18cdeab395a4c1"

  url "https://files.msgfiler.com/MsgFiler_#{version.csv.first}_#{version.csv.second}_#{version.csv.third}.dmg"
  name "MsgFiler"
  desc "Keyboard-based email filing application for Apple Mail"
  homepage "https://msgfiler.com/"

  livecheck do
    url "https://files.msgfiler.com/"
    regex(/href=.*?MsgFiler[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-](\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  depends_on macos: ">= :ventura"

  app "MsgFiler #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.atow.MsgFiler*",
    "~/Library/Application Scripts/group.com.atow.msgfiler.group",
    "~/Library/Containers/com.atow.MsgFiler*",
    "~/Library/Group Containers/group.com.atow.msgfiler.group",
  ]
end
