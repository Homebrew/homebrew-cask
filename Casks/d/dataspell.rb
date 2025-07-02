cask "dataspell" do
  arch arm: "-aarch64"

  version "2025.1.2,251.26927.75"
  sha256 arm:   "972e6281794201bb693450ca0941e13840848851799cfba965e02757764d105d",
         intel: "cea1082a3c61a034c201ce1fb3b1e1de16d82725a318ca860f0604e6253138dc"

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

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
