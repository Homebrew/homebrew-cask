cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.28"

  artifact = on_system_conditional linux: "T3-Code-#{version}-x86_64.AppImage",
                                   macos: "T3-Code-#{version}-#{arch}.dmg"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/#{artifact}",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 arm:   "4df23548031b302751144c0b6d5b0824b1578346e9550a6d96064298a80b05a3",
           intel: "adfb83407e6d44b0ea2c193d3c90365ed709d3007ec389065e6fc0f0a56858c5"

    auto_updates true
    depends_on macos: :monterey

    app "T3 Code (Alpha).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end

  on_linux do
    sha256 "fa6069fb03eb25157f1e96a29901dca81bb0a9970f5936ca255342556ec42e0a"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code.AppImage"
  end
end
