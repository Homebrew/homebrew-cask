cask "t3-code@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.0.29-nightly.20260705.729"

  artifact = on_system_conditional linux: "T3-Code-#{version}-x86_64.AppImage",
                                   macos: "T3-Code-#{version}-#{arch}.dmg"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/#{artifact}",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code Nightly"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url "https://github.com/pingdotgg/t3code/releases"
    regex(/(\d+(?:\.\d+)+-nightly\.\d{8}\.\d+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  on_macos do
    sha256 arm:   "25b74b703d59b051c7a0e27acabd5431e586d06e9a8f991e7a1924ee2f3c50df",
           intel: "c8573d497c8d4131da0c115e6f799daa598f23400012789e776fd405a730d32f"

    auto_updates true
    depends_on macos: :monterey

    app "T3 Code (Nightly).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Application Support/t3code",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end

  on_linux do
    sha256 "b1cc14b5d381feb7cbb80aa37e0dec66fa598eff1fc6581f5a592b31c090d26c"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code Nightly.AppImage"
  end
end
