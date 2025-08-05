cask "jmc" do
  version "0.3-beta"
  sha256 "b6e9303815d80948b80e1f94d797e1ee4ce1017940b236284930abc583ce6e41"

  url "https://github.com/jcm93/jmc/releases/download/v#{version}/jmc.app.zip"
  name "jmc"
  desc "Media organiser"
  homepage "https://github.com/jcm93/jmc"

  deprecate! date: "2024-11-10", because: :unmaintained

  depends_on macos: ">= :catalina"

  app "jmc.app"

  zap trash: [
        "~/Library/Application Support/jcm.jmc",
        "~/Library/Preferences/com.jcm.jmc.plist",
      ],
      rmdir: "~/Music/jmc"

  caveats do
    requires_rosetta
  end
end
