cask "clion" do
  arch arm: "-aarch64"

  version "2025.2.2,252.26199.153"
  sha256 arm:   "4dceb6ba2ae1d2fcaaa7f76090bbb18664da30d371d2e950afdffb0f9589ce7e",
         intel: "f9c42a3417db66bc88fc039829840662a650fdf79fc02619c5d6fd8a633f6606"

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
  depends_on macos: ">= :monterey"

  app "CLion.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/clion.wrapper.sh"
  binary shimscript, target: "clion"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/CLion.app/Contents/MacOS/clion' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/CLion#{version.major_minor}",
    "~/Library/Caches/JetBrains/CLion#{version.major_minor}",
    "~/Library/Logs/JetBrains/CLion#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.CLion.plist",
    "~/Library/Saved Application State/com.jetbrains.CLion.savedState",
  ]
end
