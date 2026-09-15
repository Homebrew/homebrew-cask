cask "dataspell" do
  arch arm: "-aarch64"

  version "2026.1.3,261.26222.84"
  sha256 arm:   "105919466b6fb1d241f103f8867ea652b493c8d0482bb514927e0dde6d231ad6",
         intel: "683f80483ed69333226f94e287c331b59cdbb6a4c10567126eeefbde51ad70a9"

  url "https://download.jetbrains.com/python/dataspell-#{version.csv.first}#{arch}.dmg"
  name "DataSpell"
  desc "IDE for Professional Data Scientists"
  homepage "https://www.jetbrains.com/dataspell/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DS&latest=true&type=release"
    strategy :json do |json|
      json["DS"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  # see https://blog.jetbrains.com/dataspell/2026/05/the-upcoming-sunset-of-dataspell/
  deprecate! date: "2026-06-02", because: :discontinued, replacement_cask: "pycharm"
  disable! date: "2026-09-01", because: :discontinued, replacement_cask: "pycharm"

  auto_updates true
  depends_on :macos

  app "DataSpell.app"
  command_wrapper "dataspell",
                  executable: "#{appdir}/DataSpell.app/Contents/MacOS/dataspell"

  zap trash: [
    "~/Library/Application Support/DataSpell*",
    "~/Library/Application Support/JetBrains/DataSpell*",
    "~/Library/Caches/JetBrains/DataSpell*",
    "~/Library/Logs/JetBrains/DataSpell*",
    "~/Library/Preferences/com.jetbrains.dataspell.plist",
    "~/Library/Preferences/DataSpell*",
    "~/Library/Preferences/jetbrains.dataspell.*.plist",
    "~/Library/Saved Application State/com.jetbrains.dataspell.savedState",
  ]
end
