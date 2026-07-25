cask "dataspell" do
  arch arm: "-aarch64"

  version "2026.1.2,261.25134.18"
  sha256 arm:   "3065ae7d2d2796cc1daa10023505ad9572707cf898c3cc14c7ba252313d2d799",
         intel: "daacf0cc6318bb2d6a12e4e9af1c0d6b980e3e0099ab631a75228df054fcc3c7"

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
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/dataspell.wrapper.sh"
  binary shimscript, target: "dataspell"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/DataSpell.app/Contents/MacOS/dataspell' "$@"
    EOS
  end

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
