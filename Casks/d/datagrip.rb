cask "datagrip" do
  arch arm: "-aarch64"

  version "2025.3,253.28294.259"
  sha256 arm:   "16a5df01852648a82082fb667bbed6fcb43e15ef9a91e35a0be422dd37d07180",
         intel: "4a92e083ddc6edb7ff1639705d6bd3cf8d47d960659a9aa71e19b95fafad8d07"

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.csv.first}#{arch}.dmg"
  name "DataGrip"
  desc "Databases and SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :json do |json|
      json["DG"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true

  app "DataGrip.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/datagrip.wrapper.sh"
  binary shimscript, target: "datagrip"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/DataGrip.app/Contents/MacOS/datagrip' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
