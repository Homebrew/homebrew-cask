cask "clion" do
  arch arm: "-aarch64"

  version "2026.2.0.1,262.8665.321"
  sha256 arm:   "9e4909f34adcd5b0291013194f4663650727864cc01b78b5a7d1a1414038813e",
         intel: "4f94f51d0c6b53ef29a74474440898c69ef946b947a060860f40d6a1f754dd1f"

  url "https://download.jetbrains.com/cpp/CLion-#{version.csv.first}#{arch}.dmg"
  name "CLion"
  desc "C and C++ IDE"
  homepage "https://www.jetbrains.com/clion/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release"
    strategy :json do |json|
      json["CL"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "CLion.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "clion.wrapper.sh",
                  target:  "clion",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/CLion.app/Contents/MacOS/clion' "$@"
                  EOS

  zap trash: [
    "~/Library/Application Support/JetBrains/CLion#{version.major_minor}",
    "~/Library/Caches/JetBrains/CLion#{version.major_minor}",
    "~/Library/Logs/JetBrains/CLion#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.CLion.plist",
    "~/Library/Saved Application State/com.jetbrains.CLion.savedState",
  ]
end
