cask "plain-clip" do
  version "2.5.2"
  sha256 :no_check

  url "https://www.bluem.net/files/plain-clip.zip"
  name "Plain Clip"
  desc "Removes formatting from copied text"
  homepage "https://www.bluem.net/en/mac/plain-clip/"

  deprecate! date: "2024-07-06", because: :discontinued

  app "Plain Clip/Plain Clip.app"

  zap trash: "~/Library/Preferences/net.bluem.plain-clip.plist"

  caveats do
    requires_rosetta
  end
end
