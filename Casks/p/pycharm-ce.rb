cask "pycharm-ce" do
  arch arm: "-aarch64"

  version "2025.2.1,252.25557.130"
  sha256 arm:   "01a969ec274754d93e4a85b5033cd1ebc368ce3a2d664753744ebfd6d8e1d8cf",
         intel: "34399746d564baf5c15a7e4be8e37c4146de7e27efe965afba1344d3aaceae2a"

  url "https://download.jetbrains.com/python/pycharm-community-#{version.csv.first}#{arch}.dmg"
  name "Jetbrains PyCharm Community Edition"
  name "PyCharm CE"
  desc "IDE for Python programming - Community Edition"
  homepage "https://www.jetbrains.com/pycharm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release"
    strategy :json do |json|
      json["PCC"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PyCharm CE.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/pycharm.wrapper.sh"
  binary shimscript, target: "pycharm-ce"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/PyCharm CE.app/Contents/MacOS/pycharm' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/PyCharmCE#{version.major_minor}",
    "~/Library/Application Support/PyCharm#{version.major_minor}",
    "~/Library/Caches/com.apple.python/Applications/PyCharm CE.app",
    "~/Library/Caches/JetBrains/PyCharmCE#{version.major_minor}",
    "~/Library/Caches/PyCharm#{version.major_minor}",
    "~/Library/Caches/PyCharmCE#{version.major_minor}",
    "~/Library/Logs/JetBrains/PyCharmCE#{version.major_minor}",
    "~/Library/Logs/PyCharm#{version.major_minor}",
    "~/Library/Logs/PyCharmCE#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.pycharm.ce.plist",
    "~/Library/Preferences/jetbrains.jetprofile.asset.plist",
    "~/Library/Preferences/PyCharm#{version.major_minor}",
    "~/Library/Preferences/PyCharmCE#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.pycharm.ce.savedState",
    "~/Library/Saved Application State/com.jetbrains.pycharm.savedState",
  ]
end
