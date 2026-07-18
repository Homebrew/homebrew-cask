cask "pycharm" do
  arch arm: "-aarch64"

  version "2026.1.4,261.26222.68"
  sha256 arm:   "ab14a0a7caf84b42978c20932280221191429f7b8113fd2958b2c0ead77416ad",
         intel: "439853718a0d533980c7072c5c9352e2679d42314a59cfd2824c9bb783d03df8"

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

  command_wrapper "pycharm.wrapper.sh",
                  target:  "pycharm",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/PyCharm.app/Contents/MacOS/pycharm' "$@"
                  EOS

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
