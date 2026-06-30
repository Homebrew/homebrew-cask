cask "t3-code@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.0.29-nightly.20260630.695"

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
    sha256 arm:   "e9a8b1788c7a984e135e16116457932d971a35b743113dc2c9e64425de9eac72",
           intel: "f3da5f0fae064881c4d8ec239abf4e50c267c78a48aff1197e64b15a049ee638"

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
    sha256 "5a72a0e7dc60483f6fecb70f31f877488ab7c999d7bb60f58a53c4d5b9542404"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code Nightly.AppImage"
  end
end
