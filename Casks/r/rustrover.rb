cask "rustrover" do
  arch arm: "-aarch64"

  version "2026.1.4,261.26222.73"
  sha256 arm:   "1e5cb8341bfd9a0fd1326c4233a9bdc39792fc243bc9cc69ed5d95419c321901",
         intel: "d81c20003d3117d23144987e816e2f2f3056d77ac5412cd03db130766406bcb5"

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
