cask "monofocus" do
  version "1.0.beta36"
  sha256 :no_check

  url "https://updates.monofocus.app/MonoFocus.latest.dmg"
  name "MonoFocus"
  desc "Keep all tasks from your todo apps on your menu bar"
  homepage "https://monofocus.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+\S*)/i)
    strategy :extract_plist do |items, regex|
      items["com.zbudniewek.WorkingOn"]&.short_version&.scan(regex)&.map { |match| match[0] }
    end
  end

  depends_on macos: ">= :catalina"

  app "MonoFocus.app"

  # No zap stanza required
end
