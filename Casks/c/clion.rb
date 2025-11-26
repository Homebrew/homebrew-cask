cask "clion" do
  arch arm: "-aarch64"

  version "2025.2.5,252.28238.22"
  sha256 arm:   "b0496540a133c82c64ac959f1d4542fe331bd63403fd230e23adf4bc957c84af",
         intel: "234b93f26fbb411393dbfd7d1084ff8e8d35b745778d4b9ed1ecba670dafe0fb"

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
