cask "rustrover" do
  arch arm: "-aarch64"

  version "2026.2,262.8665.323"
  sha256 arm:   "fdc76f5dfd2a617c60222fae87d3ba23428800e57b67b410fa5579636c54372d",
         intel: "8629c2fdb39004ef6dff06b936c602c27b6f6d0561f25973aabb7cc44f476167"

  url "https://download.jetbrains.com/rustrover/RustRover-#{version.csv.first}#{arch}.dmg"
  name "RustRover"
  desc "Rust IDE"
  homepage "https://www.jetbrains.com/rust/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RR&latest=true&type=release"
    strategy :json do |json|
      json["RR"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "RustRover.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "rustrover.wrapper.sh",
                  target:  "rustrover",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/RustRover.app/Contents/MacOS/rustrover' "$@"
                  EOS

  zap trash: [
    "~/Library/Application Support/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Caches/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Logs/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rustrover.plist",
    "~/Library/Saved Application State/com.jetbrains.rustrover.savedState",
  ]
end
