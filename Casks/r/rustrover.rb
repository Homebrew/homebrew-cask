cask "rustrover" do
  arch arm: "-aarch64"

  version "2026.1.3,261.25134.134"
  sha256 arm:   "9dd8a9313cedad8794768e0c7ce1e32479379621eeb5698c8fe27a1bcc63b560",
         intel: "240fbe99b2af453be31c46e56e09a30736d66f1715eecb37f96f4cea2e9e3eed"

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
  shimscript = "#{staged_path}/rustrover.wrapper.sh"
  binary shimscript, target: "rustrover"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/RustRover.app/Contents/MacOS/rustrover' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Caches/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Logs/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rustrover.plist",
    "~/Library/Saved Application State/com.jetbrains.rustrover.savedState",
  ]
end
