cask "msgfiler" do
  version "4.3.1.64,20251218,151047"
  sha256 "ebaf9e8ce651b950bf47f6cd673214d2d53c4d1f0513eee316f9ed313ee4cf36"

  url "https://files.msgfiler.com/MsgFiler_#{version.csv.first}_#{version.csv.second}_#{version.csv.third}.dmg"
  name "MsgFiler"
  desc "Keyboard-based email filing application for Apple Mail"
  homepage "https://msgfiler.com/"

  # The download page may link to an unstable version that uses the same file
  # name format as the stable version, so we also check the inner text of the
  # links to try to only match the stable version.
  livecheck do
    url "https://files.msgfiler.com/"
    regex(/
      href=.*?MsgFiler[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-](\d+)\.dmg[^>]*?>
      \s*MsgFiler\s+v?\d+(?:\.\d+)+(?:\s+on\s+Gumroad)?\s*<
    /imx)
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
