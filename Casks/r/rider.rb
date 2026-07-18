cask "rider" do
  arch arm: "-aarch64"

  version "2026.1.4,261.26222.60"
  sha256 arm:   "71fc13db604dd63cca673ad91cc42a60524f1ae470b5afecaa83893a9f8f7c11",
         intel: "19f4395a92ae9c9f89844d55700ae6dd4c59e6e7426df9d2d4ac370f8819a2b0"

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.csv.first}#{arch}.dmg"
  name "JetBrains Rider"
  desc ".NET IDE"
  homepage "https://www.jetbrains.com/rider/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
    strategy :json do |json|
      json["RD"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Rider.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "rider.wrapper.sh",
                  target:  "rider",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/Rider.app/Contents/MacOS/rider' "$@"
                  EOS

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
