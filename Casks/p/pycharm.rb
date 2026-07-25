cask "pycharm" do
  arch arm: "-aarch64"

  version "2026.2,262.8665.309"
  sha256 arm:   "c223902127ecbc19e5a637b2cc03d75097d73b0630ad9f271a889146f4386146",
         intel: "a61377521dfadcac9a0f4da85a0aec43fb451ec8b885f3c30b26fea2de258778"

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.csv.first}#{arch}.dmg"
  name "PyCharm"
  name "PyCharm Professional"
  desc "IDE for professional Python development"
  homepage "https://www.jetbrains.com/pycharm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release"
    strategy :json do |json|
      json["PCP"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "PyCharm.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/pycharm.wrapper.sh"
  binary shimscript, target: "pycharm"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/PyCharm.app/Contents/MacOS/pycharm' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Application Support/PyCharm#{version.major_minor}",
    "~/Library/Caches/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Logs/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.pycharm.plist",
    "~/Library/Preferences/jetbrains.pc.*.plist",
    "~/Library/Preferences/jetbrains.py.*.plist",
    "~/Library/Preferences/jetbrains.pycharm.*.plist",
    "~/Library/Preferences/PyCharm#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.pycharm.savedState",
  ]
end
