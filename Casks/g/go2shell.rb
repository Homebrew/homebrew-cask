cask "go2shell" do
  version "2.5"
  sha256 :no_check

  url "https://zipzapmac.com/DMGs/Go2Shell.dmg"
  name "Go2Shell"
  desc "Opens a terminal window to the current directory in Finder"
  homepage "https://zipzapmac.com/go2shell"

  deprecate! date: "2025-03-30", because: :unmaintained

  app "Go2Shell.app"

  zap trash: "~/Library/Preferences/com.zipzapmac.Go2Shell.plist"

  caveats do
    requires_rosetta
  end
end
